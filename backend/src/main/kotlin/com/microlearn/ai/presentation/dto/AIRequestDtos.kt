package com.microlearn.ai.presentation.dto

import jakarta.validation.constraints.Max
import jakarta.validation.constraints.Min
import jakarta.validation.constraints.NotBlank

data class GenerateContentRequest(
    @field:NotBlank val categorySlug: String,
    @field:NotBlank val topic: String,
    @field:NotBlank val difficulty: String,
    @field:NotBlank val lessonType: String,
    @field:Min(1) @field:Max(20) val count: Int = 5,
)

data class EvaluateAnswerRequest(
    @field:NotBlank val question: String,
    @field:NotBlank val correctAnswer: String,
    @field:NotBlank val userAnswer: String,
)
