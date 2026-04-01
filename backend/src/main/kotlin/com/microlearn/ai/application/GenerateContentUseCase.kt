package com.microlearn.ai.application

import com.microlearn.ai.application.dto.GenerateContentCommand
import com.microlearn.ai.application.dto.GeneratedLessonResult
import com.microlearn.ai.domain.model.GenerateRequest
import com.microlearn.ai.domain.service.AIContentService
import org.springframework.stereotype.Service

@Service
class GenerateContentUseCase(
    private val aiContentService: AIContentService,
) {
    fun execute(command: GenerateContentCommand): List<GeneratedLessonResult> {
        val generated = aiContentService.generateLessons(
            GenerateRequest(
                categorySlug = command.categorySlug,
                topic = command.topic,
                difficulty = command.difficulty,
                lessonType = command.lessonType,
                count = command.count,
            ),
        )

        return generated.map {
            GeneratedLessonResult(
                titleKo = it.titleKo,
                lessonType = it.lessonType,
                contentJson = it.contentJson,
                estimatedSeconds = it.estimatedSeconds,
            )
        }
    }
}
