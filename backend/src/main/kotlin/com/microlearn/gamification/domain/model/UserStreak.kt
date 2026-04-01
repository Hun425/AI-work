package com.microlearn.gamification.domain.model

import java.time.LocalDate
import java.util.UUID

class UserStreak(
    val id: UUID = UUID.randomUUID(),
    val userId: UUID,
    var streak: Streak = Streak(0, 0, null),
    var totalXp: XpPoints = XpPoints(0),
) {
    val level: Level get() = Level.fromTotalXp(totalXp.value)

    fun earnXp(amount: Int) {
        totalXp = totalXp + amount
    }

    fun recordActivity(today: LocalDate = LocalDate.now()) {
        streak = streak.recordActivity(today)
    }
}
