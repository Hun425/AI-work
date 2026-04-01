package com.microlearn.gamification.domain.model

import java.time.Instant
import java.util.UUID

class Achievement(
    val id: UUID = UUID.randomUUID(),
    val slug: String,
    val nameKo: String,
    val descriptionKo: String,
    val icon: String?,
    val xpReward: Int,
    val condition: String,
)

class UserAchievement(
    val userId: UUID,
    val achievementId: UUID,
    val earnedAt: Instant = Instant.now(),
)
