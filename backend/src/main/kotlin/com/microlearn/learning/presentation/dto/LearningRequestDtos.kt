package com.microlearn.learning.presentation.dto

import jakarta.validation.constraints.Max
import jakarta.validation.constraints.Min
import jakarta.validation.constraints.NotNull

data class CompleteLessonRequest(
    @field:NotNull @field:Min(0) @field:Max(100)
    val score: Int,
    val answers: String? = null,
    @field:NotNull @field:Min(1)
    val timeSpentSeconds: Int,
)
