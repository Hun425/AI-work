package com.microlearn.gamification.domain.service

class XpCalculator {

    fun calculateLessonXp(
        score: Int,
        isPerfect: Boolean,
        isFirstLessonToday: Boolean,
    ): Int {
        var xp = BASE_XP

        if (isPerfect) xp += PERFECT_BONUS
        if (isFirstLessonToday) xp += FIRST_LESSON_BONUS

        return xp
    }

    fun calculateDailyGoalXp(): Int = DAILY_GOAL_BONUS

    fun calculateStreakMilestoneXp(streakDays: Int): Int = when (streakDays) {
        7 -> 50
        30 -> 200
        100 -> 500
        365 -> 1000
        else -> 0
    }

    companion object {
        const val BASE_XP = 10
        const val PERFECT_BONUS = 5
        const val FIRST_LESSON_BONUS = 5
        const val DAILY_GOAL_BONUS = 10
    }
}
