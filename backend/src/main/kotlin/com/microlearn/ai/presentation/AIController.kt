package com.microlearn.ai.presentation

import com.microlearn.ai.application.EvaluateAnswerUseCase
import com.microlearn.ai.application.GenerateContentUseCase
import com.microlearn.ai.application.dto.EvaluateAnswerCommand
import com.microlearn.ai.application.dto.EvaluationResultDto
import com.microlearn.ai.application.dto.GenerateContentCommand
import com.microlearn.ai.application.dto.GeneratedLessonResult
import com.microlearn.ai.presentation.dto.EvaluateAnswerRequest
import com.microlearn.ai.presentation.dto.GenerateContentRequest
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/ai")
class AIController(
    private val generateContentUseCase: GenerateContentUseCase,
    private val evaluateAnswerUseCase: EvaluateAnswerUseCase,
) {
    @PostMapping("/generate")
    fun generateContent(
        @Valid @RequestBody request: GenerateContentRequest,
    ): ResponseEntity<List<GeneratedLessonResult>> {
        val result = generateContentUseCase.execute(
            GenerateContentCommand(
                categorySlug = request.categorySlug,
                topic = request.topic,
                difficulty = request.difficulty,
                lessonType = request.lessonType,
                count = request.count,
            ),
        )
        return ResponseEntity.ok(result)
    }

    @PostMapping("/evaluate")
    fun evaluateAnswer(
        @Valid @RequestBody request: EvaluateAnswerRequest,
    ): ResponseEntity<EvaluationResultDto> {
        val result = evaluateAnswerUseCase.execute(
            EvaluateAnswerCommand(
                question = request.question,
                correctAnswer = request.correctAnswer,
                userAnswer = request.userAnswer,
            ),
        )
        return ResponseEntity.ok(result)
    }
}
