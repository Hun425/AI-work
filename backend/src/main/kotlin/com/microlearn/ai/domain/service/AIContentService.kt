package com.microlearn.ai.domain.service

import com.microlearn.ai.domain.model.EvaluateRequest
import com.microlearn.ai.domain.model.EvaluationResult
import com.microlearn.ai.domain.model.GenerateRequest
import com.microlearn.ai.domain.model.GeneratedContent

interface AIContentService {
    fun generateLessons(request: GenerateRequest): List<GeneratedContent>
    fun evaluateAnswer(request: EvaluateRequest): EvaluationResult
}
