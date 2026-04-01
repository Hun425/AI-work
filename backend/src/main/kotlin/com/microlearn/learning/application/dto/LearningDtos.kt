package com.microlearn.learning.application.dto

import java.util.UUID

data class CompleteLessonCommand(
    val userId: UUID,
    val lessonId: UUID,
    val score: Int,
    val answers: String?,
    val timeSpentSeconds: Int,
)

data class CategoryResult(
    val id: String,
    val slug: String,
    val nameKo: String,
    val icon: String?,
    val color: String?,
)

data class CourseResult(
    val id: String,
    val slug: String,
    val titleKo: String,
    val descriptionKo: String?,
    val difficulty: String,
    val isPremium: Boolean,
    val lessonCount: Int,
    val completedCount: Int,
    val completionRate: Double,
)

data class LessonResult(
    val id: String,
    val titleKo: String,
    val lessonType: String,
    val content: String,
    val estimatedSeconds: Int,
    val isCompleted: Boolean,
    val score: Int?,
)

data class LessonCompletionResult(
    val lessonId: String,
    val score: Int,
    val isPerfect: Boolean,
)

data class DailyProgressResult(
    val lessonsCompleted: Int,
    val xpEarned: Int,
    val timeSpentSeconds: Int,
    val dailyGoalMinutes: Int,
)
