package com.microlearn.learning.domain.model

import java.time.Instant
import java.util.UUID

class Course(
    val id: UUID = UUID.randomUUID(),
    val categoryId: UUID,
    val slug: String,
    val titleKo: String,
    val descriptionKo: String?,
    val difficulty: Difficulty,
    val isPremium: Boolean = false,
    val sortOrder: Int = 0,
    val createdAt: Instant = Instant.now(),
)

enum class Difficulty {
    BEGINNER,
    INTERMEDIATE,
    ADVANCED,
}
