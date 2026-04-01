package com.microlearn.gamification.domain.event

import com.microlearn.shared.domain.DomainEvent
import java.util.UUID

class XpEarned(
    val userId: UUID,
    val amount: Int,
    val source: String,
    val totalXp: Int,
) : DomainEvent()

class AchievementUnlocked(
    val userId: UUID,
    val achievementSlug: String,
    val achievementNameKo: String,
    val xpReward: Int,
) : DomainEvent()
