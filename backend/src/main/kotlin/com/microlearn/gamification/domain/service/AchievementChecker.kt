package com.microlearn.gamification.domain.service

import com.microlearn.gamification.domain.model.Achievement
import com.microlearn.gamification.domain.model.UserStreak

class AchievementChecker {

    fun checkNewAchievements(
        userStreak: UserStreak,
        totalLessonsCompleted: Int,
        categoriesExplored: Int,
        hadPerfectScore: Boolean,
        fastestLessonSeconds: Int?,
        allAchievements: List<Achievement>,
        earnedAchievementIds: Set<String>,
    ): List<Achievement> {
        return allAchievements.filter { achievement ->
            achievement.slug !in earnedAchievementIds && isConditionMet(
                achievement = achievement,
                userStreak = userStreak,
                totalLessonsCompleted = totalLessonsCompleted,
                categoriesExplored = categoriesExplored,
                hadPerfectScore = hadPerfectScore,
                fastestLessonSeconds = fastestLessonSeconds,
            )
        }
    }

    private fun isConditionMet(
        achievement: Achievement,
        userStreak: UserStreak,
        totalLessonsCompleted: Int,
        categoriesExplored: Int,
        hadPerfectScore: Boolean,
        fastestLessonSeconds: Int?,
    ): Boolean {
        val slug = achievement.slug
        return when {
            slug == "first_lesson" -> totalLessonsCompleted >= 1
            slug == "streak_3" -> userStreak.streak.current >= 3
            slug == "streak_7" -> userStreak.streak.current >= 7
            slug == "streak_30" -> userStreak.streak.current >= 30
            slug == "perfect_score" -> hadPerfectScore
            slug == "category_explorer" -> categoriesExplored >= 4
            slug == "speed_learner" -> fastestLessonSeconds != null && fastestLessonSeconds <= 120
            slug == "level_5" -> userStreak.level.value >= 5
            else -> false
        }
    }
}
