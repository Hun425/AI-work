package com.microlearn.learning.application

import com.microlearn.learning.application.dto.CourseResult
import com.microlearn.learning.application.dto.LessonResult
import com.microlearn.learning.domain.repository.CategoryRepository
import com.microlearn.learning.domain.repository.CourseRepository
import com.microlearn.learning.domain.repository.LessonRepository
import com.microlearn.learning.domain.repository.ProgressRepository
import com.microlearn.learning.domain.service.NextLessonRecommender
import com.microlearn.shared.domain.exception.CategoryNotFoundException
import com.microlearn.shared.domain.exception.CourseNotFoundException
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class GetCourseLessonsUseCase(
    private val categoryRepository: CategoryRepository,
    private val courseRepository: CourseRepository,
    private val lessonRepository: LessonRepository,
    private val progressRepository: ProgressRepository,
) {
    private val recommender = NextLessonRecommender()

    @Transactional(readOnly = true)
    fun getCoursesByCategory(categorySlug: String, userId: UUID): List<CourseResult> {
        val category = categoryRepository.findBySlug(categorySlug)
            ?: throw CategoryNotFoundException(categorySlug)

        return courseRepository.findByCategoryId(category.id)
            .sortedBy { it.sortOrder }
            .map { course ->
                val lessons = lessonRepository.findByCourseId(course.id)
                val completedCount = progressRepository.countByUserIdAndCourseId(userId, course.id)

                CourseResult(
                    id = course.id.toString(),
                    slug = course.slug,
                    titleKo = course.titleKo,
                    descriptionKo = course.descriptionKo,
                    difficulty = course.difficulty.name,
                    isPremium = course.isPremium,
                    lessonCount = lessons.size,
                    completedCount = completedCount,
                    completionRate = recommender.getCompletionRate(lessons.size, completedCount),
                )
            }
    }

    @Transactional(readOnly = true)
    fun getLessonsByCourse(courseId: UUID, userId: UUID): List<LessonResult> {
        val course = courseRepository.findById(courseId)
            ?: throw CourseNotFoundException(courseId.toString())

        val userProgress = progressRepository.findByUserId(userId)
        val progressMap = userProgress.associateBy { it.lessonId }

        return lessonRepository.findByCourseId(course.id)
            .sortedBy { it.sortOrder }
            .map { lesson ->
                val progress = progressMap[lesson.id]
                LessonResult(
                    id = lesson.id.toString(),
                    titleKo = lesson.titleKo,
                    lessonType = lesson.lessonType.name,
                    content = lesson.content.rawJson,
                    estimatedSeconds = lesson.estimatedSeconds,
                    isCompleted = progress != null,
                    score = progress?.score,
                )
            }
    }
}
