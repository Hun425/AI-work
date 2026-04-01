package com.microlearn.ai.application

import com.microlearn.ai.application.dto.EvaluateAnswerCommand
import com.microlearn.ai.application.dto.EvaluationResultDto
import com.microlearn.ai.domain.model.EvaluateRequest
import com.microlearn.ai.domain.service.AIContentService
import org.springframework.stereotype.Service

@Service
class EvaluateAnswerUseCase(
    private val aiContentService: AIContentService,
) {
    fun execute(command: EvaluateAnswerCommand): EvaluationResultDto {
        val result = aiContentService.evaluateAnswer(
            EvaluateRequest(
                question = command.question,
                correctAnswer = command.correctAnswer,
                userAnswer = command.userAnswer,
            ),
        )

        return EvaluationResultDto(
            correct = result.correct,
            score = result.score,
            feedback = result.feedback,
        )
    }
}
