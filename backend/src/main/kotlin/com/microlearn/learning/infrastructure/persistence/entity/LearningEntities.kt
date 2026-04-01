package com.microlearn.learning.infrastructure.persistence.entity

import com.microlearn.learning.domain.model.Difficulty
import com.microlearn.learning.domain.model.LessonType
import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.EnumType
import jakarta.persistence.Enumerated
import jakarta.persistence.Id
import jakarta.persistence.Table
import java.time.Instant
import java.time.LocalDate
import java.util.UUID

@Entity
@Table(name = "categories")
class CategoryJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(unique = true, nullable = false) val slug: String = "",
    @Column(name = "name_ko", nullable = false) val nameKo: String = "",
    val icon: String? = null,
    val color: String? = null,
    @Column(name = "sort_order") val sortOrder: Int = 0,
    @Column(name = "is_active") val isActive: Boolean = true,
)

@Entity
@Table(name = "courses")
class CourseJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "category_id", nullable = false) val categoryId: UUID = UUID.randomUUID(),
    @Column(unique = true, nullable = false) val slug: String = "",
    @Column(name = "title_ko", nullable = false) val titleKo: String = "",
    @Column(name = "description_ko") val descriptionKo: String? = null,
    @Enumerated(EnumType.STRING) val difficulty: Difficulty = Difficulty.BEGINNER,
    @Column(name = "is_premium") val isPremium: Boolean = false,
    @Column(name = "sort_order") val sortOrder: Int = 0,
    @Column(name = "created_at") val createdAt: Instant = Instant.now(),
)

@Entity
@Table(name = "lessons")
class LessonJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "course_id", nullable = false) val courseId: UUID = UUID.randomUUID(),
    @Column(name = "sort_order", nullable = false) val sortOrder: Int = 0,
    @Column(name = "title_ko", nullable = false) val titleKo: String = "",
    @Column(name = "lesson_type", nullable = false) @Enumerated(EnumType.STRING) val lessonType: LessonType = LessonType.QUIZ,
    @Column(nullable = false, columnDefinition = "jsonb") val content: String = "{}",
    @Column(name = "estimated_seconds") val estimatedSeconds: Int = 120,
    @Column(name = "created_at") val createdAt: Instant = Instant.now(),
)

@Entity
@Table(name = "user_progress")
class UserProgressJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "user_id", nullable = false) val userId: UUID = UUID.randomUUID(),
    @Column(name = "lesson_id", nullable = false) val lessonId: UUID = UUID.randomUUID(),
    val score: Int? = null,
    @Column(columnDefinition = "jsonb") val answers: String? = null,
    @Column(name = "time_spent_seconds") val timeSpentSeconds: Int? = null,
    @Column(name = "completed_at") val completedAt: Instant = Instant.now(),
)

@Entity
@Table(name = "daily_activity")
class DailyActivityJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "user_id", nullable = false) val userId: UUID = UUID.randomUUID(),
    @Column(name = "activity_date", nullable = false) val activityDate: LocalDate = LocalDate.now(),
    @Column(name = "lessons_completed") var lessonsCompleted: Int = 0,
    @Column(name = "xp_earned") var xpEarned: Int = 0,
    @Column(name = "time_spent_seconds") var timeSpentSeconds: Int = 0,
)
