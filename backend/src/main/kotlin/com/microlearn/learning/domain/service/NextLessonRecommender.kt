package com.microlearn.learning.domain.service

import com.microlearn.learning.domain.model.Lesson
import com.microlearn.learning.domain.model.UserProgress
import java.util.UUID

class NextLessonRecommender {

    fun recommend(
        allLessons: List<Lesson>,
        userProgress: List<UserProgress>,
    ): Lesson? {
        val completedLessonIds = userProgress.map { it.lessonId }.toSet()

        // 1. 70% 미만 점수 → 재도전 추천
        val weakLesson = userProgress
            .filter { it.score < 70 }
            .minByOrNull { it.score }
            ?.let { weak -> allLessons.find { it.id == weak.lessonId } }

        if (weakLesson != null) return weakLesson

        // 2. 아직 안 푼 레슨 중 순서가 가장 빠른 것
        return allLessons
            .filter { it.id !in completedLessonIds }
            .minByOrNull { it.sortOrder }
    }

    fun getCompletionRate(
        totalLessons: Int,
        completedCount: Int,
    ): Double {
        if (totalLessons == 0) return 0.0
        return (completedCount.toDouble() / totalLessons * 100)
    }
}
