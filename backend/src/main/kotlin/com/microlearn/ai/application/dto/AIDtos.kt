package com.microlearn.ai.application.dto

data class GenerateContentCommand(
    val categorySlug: String,
    val topic: String,
    val difficulty: String,
    val lessonType: String,
    val count: Int = 5,
)

data class EvaluateAnswerCommand(
    val question: String,
    val correctAnswer: String,
    val userAnswer: String,
)

data class GeneratedLessonResult(
    val titleKo: String,
    val lessonType: String,
    val contentJson: String,
    val estimatedSeconds: Int,
)

data class EvaluationResultDto(
    val correct: Boolean,
    val score: Int,
    val feedback: String,
)
