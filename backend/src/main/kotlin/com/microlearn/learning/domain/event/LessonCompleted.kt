package com.microlearn.learning.domain.event

import com.microlearn.shared.domain.DomainEvent
import java.util.UUID

class LessonCompleted(
    val userId: UUID,
    val lessonId: UUID,
    val courseId: UUID,
    val categorySlug: String,
    val score: Int,
    val isPerfect: Boolean,
    val timeSpentSeconds: Int,
) : DomainEvent()
