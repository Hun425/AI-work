package com.microlearn.learning.application

import com.microlearn.learning.application.dto.CompleteLessonCommand
import com.microlearn.learning.application.dto.LessonCompletionResult
import com.microlearn.learning.domain.event.LessonCompleted
import com.microlearn.learning.domain.model.DailyActivity
import com.microlearn.learning.domain.model.UserProgress
import com.microlearn.learning.domain.repository.CourseRepository
import com.microlearn.learning.domain.repository.CategoryRepository
import com.microlearn.learning.domain.repository.DailyActivityRepository
import com.microlearn.learning.domain.repository.LessonRepository
import com.microlearn.learning.domain.repository.ProgressRepository
import com.microlearn.shared.domain.exception.LessonNotFoundException
import org.springframework.context.ApplicationEventPublisher
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.LocalDate

@Service
class CompleteLessonUseCase(
    private val lessonRepository: LessonRepository,
    private val courseRepository: CourseRepository,
    private val categoryRepository: CategoryRepository,
    private val progressRepository: ProgressRepository,
    private val dailyActivityRepository: DailyActivityRepository,
    private val eventPublisher: ApplicationEventPublisher,
) {
    @Transactional
    fun execute(command: CompleteLessonCommand): LessonCompletionResult {
        val lesson = lessonRepository.findById(command.lessonId)
            ?: throw LessonNotFoundException(command.lessonId.toString())

        val progress = UserProgress.complete(
            userId = command.userId,
            lessonId = lesson.id,
            score = command.score,
            answers = command.answers,
            timeSpentSeconds = command.timeSpentSeconds,
        )

        progressRepository.save(progress)

        // Update daily activity
        val today = LocalDate.now()
        val daily = dailyActivityRepository.findByUserIdAndDate(command.userId, today)
            ?: DailyActivity(userId = command.userId, activityDate = today)
        daily.recordLesson(xp = 0, seconds = command.timeSpentSeconds) // XP는 Gamification BC에서 계산
        dailyActivityRepository.save(daily)

        // Resolve category slug for event
        val course = courseRepository.findById(lesson.courseId)
        val categorySlug = course?.let {
            categoryRepository.findAll().find { cat -> cat.id == it.categoryId }?.slug
        } ?: "unknown"

        // Publish domain event → Gamification BC가 수신
        eventPublisher.publishEvent(
            LessonCompleted(
                userId = command.userId,
                lessonId = lesson.id,
                courseId = lesson.courseId,
                categorySlug = categorySlug,
                score = progress.score,
                isPerfect = progress.isPerfect,
                timeSpentSeconds = progress.timeSpentSeconds,
            ),
        )

        return LessonCompletionResult(
            lessonId = lesson.id.toString(),
            score = progress.score,
            isPerfect = progress.isPerfect,
        )
    }
}
