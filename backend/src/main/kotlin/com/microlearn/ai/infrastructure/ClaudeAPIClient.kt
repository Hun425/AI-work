package com.microlearn.ai.infrastructure

import com.fasterxml.jackson.databind.JsonNode
import com.fasterxml.jackson.databind.ObjectMapper
import com.microlearn.ai.domain.model.EvaluateRequest
import com.microlearn.ai.domain.model.EvaluationResult
import com.microlearn.ai.domain.model.GenerateRequest
import com.microlearn.ai.domain.model.GeneratedContent
import com.microlearn.ai.domain.service.AIContentService
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Value
import org.springframework.http.MediaType
import org.springframework.stereotype.Component
import org.springframework.web.client.RestClient

@Component
class ClaudeAPIClient(
    @Value("\${anthropic.api-key:}") private val apiKey: String,
    @Value("\${anthropic.model:claude-sonnet-4-20250514}") private val model: String,
    private val objectMapper: ObjectMapper,
) : AIContentService {

    private val log = LoggerFactory.getLogger(javaClass)
    private val restClient = RestClient.create()

    override fun generateLessons(request: GenerateRequest): List<GeneratedContent> {
        val prompt = when (request.lessonType.lowercase()) {
            "quiz" -> PromptTemplates.codingQuiz(request.topic, request.difficulty, request.count)
            "flashcard" -> PromptTemplates.flashcard(request.topic, request.difficulty, request.count)
            "reading" -> PromptTemplates.codeReading(request.topic, request.difficulty, request.count)
            "fill_blank" -> PromptTemplates.fillBlank(request.topic, request.difficulty, request.count)
            else -> PromptTemplates.codingQuiz(request.topic, request.difficulty, request.count)
        }

        val responseText = callClaude(prompt)

        return try {
            val json = extractJson(responseText)
            val lessonType = request.lessonType.uppercase()

            (0 until request.count).map { idx ->
                GeneratedContent(
                    lessonType = lessonType,
                    titleKo = "${request.topic} - ${idx + 1}",
                    contentJson = json,
                    estimatedSeconds = if (lessonType == "FLASHCARD") 90 else 120,
                )
            }
        } catch (e: Exception) {
            log.error("Failed to parse AI response", e)
            emptyList()
        }
    }

    override fun evaluateAnswer(request: EvaluateRequest): EvaluationResult {
        val prompt = PromptTemplates.evaluateAnswer(
            question = request.question,
            correctAnswer = request.correctAnswer,
            userAnswer = request.userAnswer,
        )

        val responseText = callClaude(prompt)

        return try {
            val json = objectMapper.readTree(extractJson(responseText))
            EvaluationResult(
                correct = json.get("correct")?.asBoolean() ?: false,
                score = json.get("score")?.asInt() ?: 0,
                feedback = json.get("feedback")?.asText() ?: "평가를 완료할 수 없습니다.",
            )
        } catch (e: Exception) {
            log.error("Failed to parse evaluation response", e)
            EvaluationResult(
                correct = false,
                score = 0,
                feedback = "AI 평가 중 오류가 발생했습니다.",
            )
        }
    }

    private fun callClaude(prompt: String): String {
        if (apiKey.isBlank()) {
            log.warn("Anthropic API key not configured, returning mock response")
            return getMockResponse(prompt)
        }

        val requestBody = mapOf(
            "model" to model,
            "max_tokens" to 4096,
            "messages" to listOf(
                mapOf("role" to "user", "content" to prompt),
            ),
        )

        val response = restClient.post()
            .uri("https://api.anthropic.com/v1/messages")
            .header("x-api-key", apiKey)
            .header("anthropic-version", "2023-06-01")
            .contentType(MediaType.APPLICATION_JSON)
            .body(requestBody)
            .retrieve()
            .body(JsonNode::class.java)

        return response
            ?.get("content")
            ?.firstOrNull()
            ?.get("text")
            ?.asText()
            ?: throw RuntimeException("Empty response from Claude API")
    }

    private fun extractJson(text: String): String {
        // Claude sometimes wraps JSON in markdown code blocks
        val jsonPattern = Regex("```(?:json)?\\s*\\n?([\\s\\S]*?)\\n?```")
        val match = jsonPattern.find(text)
        if (match != null) return match.groupValues[1].trim()

        // Try to find raw JSON
        val braceStart = text.indexOf('{')
        val braceEnd = text.lastIndexOf('}')
        if (braceStart >= 0 && braceEnd > braceStart) {
            return text.substring(braceStart, braceEnd + 1)
        }

        return text
    }

    private fun getMockResponse(prompt: String): String {
        // Mock response for development without API key
        if (prompt.contains("평가")) {
            return """{"correct": true, "score": 80, "feedback": "좋은 답변입니다! 핵심 개념을 잘 이해하고 있습니다."}"""
        }
        if (prompt.contains("플래시카드")) {
            return """{
                "cards": [
                    {"front": "변수(Variable)란?", "back": "데이터를 저장하는 메모리 공간에 붙이는 이름", "hint": "상자에 이름표를 붙이는 것과 비슷해요"},
                    {"front": "함수(Function)란?", "back": "특정 작업을 수행하는 코드 블록", "hint": "레시피와 비슷해요"},
                    {"front": "반복문(Loop)이란?", "back": "조건이 만족되는 동안 코드를 반복 실행하는 구조", "hint": "for, while"},
                    {"front": "조건문(Conditional)이란?", "back": "조건에 따라 다른 코드를 실행하는 구조", "hint": "if, else"},
                    {"front": "리스트(List)란?", "back": "여러 값을 순서대로 저장하는 자료구조", "hint": "[1, 2, 3]"}
                ]
            }"""
        }
        return """{
            "questions": [
                {"question": "Python에서 리스트의 길이를 구하는 함수는?", "code": null, "options": ["len()", "size()", "length()", "count()"], "correct_index": 0, "explanation": "len() 함수는 리스트, 문자열 등의 길이를 반환합니다."},
                {"question": "다음 중 Python의 기본 데이터 타입이 아닌 것은?", "code": null, "options": ["int", "str", "array", "float"], "correct_index": 2, "explanation": "array는 기본 타입이 아니라 별도 모듈에서 제공됩니다. list를 사용합니다."},
                {"question": "print(type(3.14))의 출력 결과는?", "code": "print(type(3.14))", "options": ["<class 'float'>", "<class 'int'>", "<class 'double'>", "<class 'decimal'>"], "correct_index": 0, "explanation": "3.14는 소수점이 있으므로 float 타입입니다."},
                {"question": "리스트 a = [1,2,3]에서 a[1]의 값은?", "code": "a = [1, 2, 3]\nprint(a[1])", "options": ["2", "1", "3", "에러"], "correct_index": 0, "explanation": "Python의 인덱스는 0부터 시작하므로 a[1]은 두 번째 요소인 2입니다."},
                {"question": "Python에서 문자열을 합치는 연산자는?", "code": null, "options": ["+", "&", ".", "++"], "correct_index": 0, "explanation": "Python에서는 + 연산자로 문자열을 연결(concatenation)합니다."}
            ]
        }"""
    }
}
