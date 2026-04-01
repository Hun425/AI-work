package com.microlearn.gamification.domain.repository

import com.microlearn.gamification.domain.model.Achievement
import com.microlearn.gamification.domain.model.UserAchievement
import com.microlearn.gamification.domain.model.UserStreak
import java.util.UUID

interface StreakRepository {
    fun save(streak: UserStreak): UserStreak
    fun findByUserId(userId: UUID): UserStreak?
}

interface AchievementRepository {
    fun findAll(): List<Achievement>
    fun saveUserAchievement(userAchievement: UserAchievement)
    fun findEarnedSlugs(userId: UUID): Set<String>
    fun findEarnedByUserId(userId: UUID): List<Pair<Achievement, UserAchievement>>
}

data class CategoryRankingEntry(
    val userId: UUID,
    val displayName: String,
    val avatarUrl: String?,
    val lessonsCompleted: Int,
    val avgScore: Double,
    val totalScore: Int,
)

data class StreakRankingEntry(
    val userId: UUID,
    val displayName: String,
    val avatarUrl: String?,
    val currentStreak: Int,
    val longestStreak: Int,
)

interface RankingRepository {
    fun getCategoryRanking(categorySlug: String, limit: Int = 20): List<CategoryRankingEntry>
    fun getStreakRanking(limit: Int = 20): List<StreakRankingEntry>
}
