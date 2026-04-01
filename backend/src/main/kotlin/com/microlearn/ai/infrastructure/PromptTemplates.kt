package com.microlearn.ai.infrastructure

object PromptTemplates {

    fun codingQuiz(topic: String, difficulty: String, count: Int): String = """
당신은 한국어로 코딩 퀴즈를 만드는 교육 전문가입니다.

다음 조건에 맞는 객관식 퀴즈를 JSON 형식으로 ${count}개 생성하세요:
- 주제: $topic
- 난이도: $difficulty (beginner/intermediate/advanced)
- 각 문제는 4개의 선택지, 정답 인덱스, 한국어 해설을 포함

응답은 반드시 아래 JSON 형식만 출력하세요:
{
  "questions": [
    {
      "question": "문제 텍스트",
      "code": "관련 코드 (없으면 null)",
      "options": ["선택지1", "선택지2", "선택지3", "선택지4"],
      "correct_index": 0,
      "explanation": "해설 텍스트"
    }
  ]
}
    """.trimIndent()

    fun flashcard(topic: String, difficulty: String, count: Int): String = """
당신은 한국어로 코딩 개념 플래시카드를 만드는 교육 전문가입니다.

다음 조건에 맞는 플래시카드를 JSON 형식으로 ${count}개 생성하세요:
- 주제: $topic
- 난이도: $difficulty
- 앞면: 용어 또는 질문, 뒷면: 설명

응답은 반드시 아래 JSON 형식만 출력하세요:
{
  "cards": [
    {
      "front": "용어 또는 질문",
      "back": "설명",
      "hint": "힌트 (선택사항, 없으면 null)"
    }
  ]
}
    """.trimIndent()

    fun codeReading(topic: String, difficulty: String, count: Int): String = """
당신은 한국어로 코드 읽기 문제를 만드는 교육 전문가입니다.

다음 조건에 맞는 코드 읽기 문제를 JSON 형식으로 ${count}개 생성하세요:
- 주제: $topic
- 난이도: $difficulty
- 코드를 보여주고 출력 결과나 동작을 묻는 문제

응답은 반드시 아래 JSON 형식만 출력하세요:
{
  "questions": [
    {
      "question": "다음 코드의 출력 결과는?",
      "code": "print('hello')",
      "options": ["hello", "Hello", "HELLO", "에러"],
      "correct_index": 0,
      "explanation": "print 함수는 문자열을 그대로 출력합니다."
    }
  ]
}
    """.trimIndent()

    fun fillBlank(topic: String, difficulty: String, count: Int): String = """
당신은 한국어로 빈칸 채우기 코딩 문제를 만드는 교육 전문가입니다.

다음 조건에 맞는 빈칸 채우기 문제를 JSON 형식으로 ${count}개 생성하세요:
- 주제: $topic
- 난이도: $difficulty
- 코드에서 핵심 부분을 ___로 표시

응답은 반드시 아래 JSON 형식만 출력하세요:
{
  "questions": [
    {
      "question": "다음 빈칸에 들어갈 코드를 고르세요",
      "code": "for i in ___:\n    print(i)",
      "options": ["range(10)", "10", "[10]", "range[10]"],
      "correct_index": 0,
      "explanation": "range() 함수는 반복 가능한 숫자 시퀀스를 생성합니다."
    }
  ]
}
    """.trimIndent()

    fun evaluateAnswer(question: String, correctAnswer: String, userAnswer: String): String = """
당신은 코딩 교육 평가 전문가입니다.

학생의 답변을 평가하고 한국어로 피드백을 제공하세요.

문제: $question
정답: $correctAnswer
학생 답변: $userAnswer

다음 JSON 형식으로만 응답하세요:
{
  "correct": true/false,
  "score": 0~100,
  "feedback": "한국어 피드백"
}
    """.trimIndent()
}
