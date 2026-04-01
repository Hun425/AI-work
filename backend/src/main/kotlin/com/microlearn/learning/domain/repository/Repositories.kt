package com.microlearn.learning.domain.repository

import com.microlearn.learning.domain.model.Category
import com.microlearn.learning.domain.model.Course
import com.microlearn.learning.domain.model.DailyActivity
import com.microlearn.learning.domain.model.Lesson
import com.microlearn.learning.domain.model.UserProgress
import java.time.LocalDate
import java.util.UUID

interface CategoryRepository {
    fun findAll(): List<Category>
    fun findBySlug(slug: String): Category?
}

interface CourseRepository {
    fun findByCategoryId(categoryId: UUID): List<Course>
    fun findById(id: UUID): Course?
}

interface LessonRepository {
    fun findByCourseId(courseId: UUID): List<Lesson>
    fun findById(id: UUID): Lesson?
}

interface ProgressRepository {
    fun save(progress: UserProgress): UserProgress
    fun findByUserIdAndLessonId(userId: UUID, lessonId: UUID): UserProgress?
    fun findByUserId(userId: UUID): List<UserProgress>
    fun countByUserIdAndCourseId(userId: UUID, courseId: UUID): Int
}

interface DailyActivityRepository {
    fun save(activity: DailyActivity): DailyActivity
    fun findByUserIdAndDate(userId: UUID, date: LocalDate): DailyActivity?
}
