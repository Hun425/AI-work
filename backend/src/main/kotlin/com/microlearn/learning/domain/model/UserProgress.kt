package com.microlearn.learning.domain.model

import java.time.Instant
import java.util.UUID

class UserProgress(
    val id: UUID = UUID.randomUUID(),
    val userId: UUID,
    val lessonId: UUID,
    val score: Int,
    val answers: String?,
    val timeSpentSeconds: Int,
    val completedAt: Instant = Instant.now(),
) {
    val isPerfect: Boolean get() = score == 100

    companion object {
        fun complete(
            userId: UUID,
            lessonId: UUID,
            score: Int,
            answers: String?,
            timeSpentSeconds: Int,
        ): UserProgress = UserProgress(
            userId = userId,
            lessonId = lessonId,
            score = score.coerceIn(0, 100),
            answers = answers,
            timeSpentSeconds = timeSpentSeconds,
        )
    }
}
