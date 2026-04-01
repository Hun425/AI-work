package com.microlearn.gamification.application.dto

import java.util.UUID

data class EarnXpCommand(
    val userId: UUID,
    val score: Int,
    val isPerfect: Boolean,
    val timeSpentSeconds: Int,
)

data class StreakResult(
    val currentStreak: Int,
    val longestStreak: Int,
    val isActive: Boolean,
    val totalXp: Int,
    val level: Int,
    val xpToNextLevel: Int,
    val levelProgressPercent: Double,
)

data class AchievementResult(
    val slug: String,
    val nameKo: String,
    val descriptionKo: String,
    val icon: String?,
    val xpReward: Int,
    val isEarned: Boolean,
    val earnedAt: String?,
)

data class ProfileStatsResult(
    val level: Int,
    val totalXp: Int,
    val currentStreak: Int,
    val longestStreak: Int,
    val lessonsCompleted: Int,
    val achievements: List<AchievementResult>,
)

data class RankingEntryResult(
    val rank: Int,
    val userId: String,
    val displayName: String,
    val avatarUrl: String?,
    val score: Int,
    val detail: String,
)
