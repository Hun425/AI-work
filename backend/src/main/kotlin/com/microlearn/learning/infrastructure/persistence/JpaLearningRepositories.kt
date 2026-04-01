package com.microlearn.learning.infrastructure.persistence

import com.microlearn.learning.domain.model.Category
import com.microlearn.learning.domain.model.Course
import com.microlearn.learning.domain.model.DailyActivity
import com.microlearn.learning.domain.model.Difficulty
import com.microlearn.learning.domain.model.Lesson
import com.microlearn.learning.domain.model.LessonContent
import com.microlearn.learning.domain.model.UserProgress
import com.microlearn.learning.domain.repository.CategoryRepository
import com.microlearn.learning.domain.repository.CourseRepository
import com.microlearn.learning.domain.repository.DailyActivityRepository
import com.microlearn.learning.domain.repository.LessonRepository
import com.microlearn.learning.domain.repository.ProgressRepository
import com.microlearn.learning.infrastructure.persistence.entity.CategoryJpaEntity
import com.microlearn.learning.infrastructure.persistence.entity.CourseJpaEntity
import com.microlearn.learning.infrastructure.persistence.entity.DailyActivityJpaEntity
import com.microlearn.learning.infrastructure.persistence.entity.LessonJpaEntity
import com.microlearn.learning.infrastructure.persistence.entity.UserProgressJpaEntity
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.stereotype.Repository
import java.time.LocalDate
import java.util.UUID

// Spring Data interfaces
interface SpringDataCategoryRepo : JpaRepository<CategoryJpaEntity, UUID> {
    fun findBySlug(slug: String): CategoryJpaEntity?
}

interface SpringDataCourseRepo : JpaRepository<CourseJpaEntity, UUID> {
    fun findByCategoryId(categoryId: UUID): List<CourseJpaEntity>
}

interface SpringDataLessonRepo : JpaRepository<LessonJpaEntity, UUID> {
    fun findByCourseId(courseId: UUID): List<LessonJpaEntity>
}

interface SpringDataProgressRepo : JpaRepository<UserProgressJpaEntity, UUID> {
    fun findByUserIdAndLessonId(userId: UUID, lessonId: UUID): UserProgressJpaEntity?
    fun findByUserId(userId: UUID): List<UserProgressJpaEntity>

    @Query(
        "SELECT COUNT(p) FROM UserProgressJpaEntity p " +
            "WHERE p.userId = :userId AND p.lessonId IN " +
            "(SELECT l.id FROM LessonJpaEntity l WHERE l.courseId = :courseId)",
    )
    fun countByUserIdAndCourseId(userId: UUID, courseId: UUID): Int
}

interface SpringDataDailyActivityRepo : JpaRepository<DailyActivityJpaEntity, UUID> {
    fun findByUserIdAndActivityDate(userId: UUID, activityDate: LocalDate): DailyActivityJpaEntity?
}

// Domain repository implementations
@Repository
class JpaCategoryRepository(private val repo: SpringDataCategoryRepo) : CategoryRepository {
    override fun findAll(): List<Category> = repo.findAll().map { it.toDomain() }
    override fun findBySlug(slug: String): Category? = repo.findBySlug(slug)?.toDomain()
}

@Repository
class JpaCourseRepository(private val repo: SpringDataCourseRepo) : CourseRepository {
    override fun findByCategoryId(categoryId: UUID): List<Course> =
        repo.findByCategoryId(categoryId).map { it.toDomain() }
    override fun findById(id: UUID): Course? = repo.findById(id).orElse(null)?.toDomain()
}

@Repository
class JpaLessonRepository(private val repo: SpringDataLessonRepo) : LessonRepository {
    override fun findByCourseId(courseId: UUID): List<Lesson> =
        repo.findByCourseId(courseId).map { it.toDomain() }
    override fun findById(id: UUID): Lesson? = repo.findById(id).orElse(null)?.toDomain()
}

@Repository
class JpaProgressRepository(private val repo: SpringDataProgressRepo) : ProgressRepository {
    override fun save(progress: UserProgress): UserProgress =
        repo.save(progress.toJpa()).toDomain()
    override fun findByUserIdAndLessonId(userId: UUID, lessonId: UUID): UserProgress? =
        repo.findByUserIdAndLessonId(userId, lessonId)?.toDomain()
    override fun findByUserId(userId: UUID): List<UserProgress> =
        repo.findByUserId(userId).map { it.toDomain() }
    override fun countByUserIdAndCourseId(userId: UUID, courseId: UUID): Int =
        repo.countByUserIdAndCourseId(userId, courseId)
}

@Repository
class JpaDailyActivityRepository(private val repo: SpringDataDailyActivityRepo) : DailyActivityRepository {
    override fun save(activity: DailyActivity): DailyActivity =
        repo.save(activity.toJpa()).toDomain()
    override fun findByUserIdAndDate(userId: UUID, date: LocalDate): DailyActivity? =
        repo.findByUserIdAndActivityDate(userId, date)?.toDomain()
}

// Mapping extensions
private fun CategoryJpaEntity.toDomain() = Category(id, slug, nameKo, icon, color, sortOrder, isActive)
private fun CourseJpaEntity.toDomain() = Course(id, categoryId, slug, titleKo, descriptionKo, difficulty, isPremium, sortOrder, createdAt)
private fun LessonJpaEntity.toDomain() = Lesson(id, courseId, sortOrder, titleKo, lessonType, LessonContent(content), estimatedSeconds, createdAt)
private fun UserProgressJpaEntity.toDomain() = UserProgress(id, userId, lessonId, score ?: 0, answers, timeSpentSeconds ?: 0, completedAt)
private fun DailyActivityJpaEntity.toDomain() = DailyActivity(id, userId, activityDate, lessonsCompleted, xpEarned, timeSpentSeconds)

private fun UserProgress.toJpa() = UserProgressJpaEntity(id, userId, lessonId, score, answers, timeSpentSeconds, completedAt)
private fun DailyActivity.toJpa() = DailyActivityJpaEntity(id, userId, activityDate, lessonsCompleted, xpEarned, timeSpentSeconds)
