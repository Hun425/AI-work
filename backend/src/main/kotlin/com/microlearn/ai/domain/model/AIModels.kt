package com.microlearn.ai.domain.model

data class GeneratedContent(
    val lessonType: String,
    val titleKo: String,
    val contentJson: String,
    val estimatedSeconds: Int,
)

data class EvaluationResult(
    val correct: Boolean,
    val score: Int,
    val feedback: String,
)

data class GenerateRequest(
    val categorySlug: String,
    val topic: String,
    val difficulty: String,
    val lessonType: String,
    val count: Int = 5,
)

data class EvaluateRequest(
    val question: String,
    val correctAnswer: String,
    val userAnswer: String,
)
