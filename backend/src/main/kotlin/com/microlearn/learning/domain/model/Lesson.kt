package com.microlearn.learning.domain.model

import java.time.Instant
import java.util.UUID

class Lesson(
    val id: UUID = UUID.randomUUID(),
    val courseId: UUID,
    val sortOrder: Int,
    val titleKo: String,
    val lessonType: LessonType,
    val content: LessonContent,
    val estimatedSeconds: Int = 120,
    val createdAt: Instant = Instant.now(),
)

enum class LessonType {
    QUIZ,
    FLASHCARD,
    READING,
    FILL_BLANK,
}

data class LessonContent(val rawJson: String)
