package com.microlearn.gamification.domain.model

import java.time.LocalDate

data class Streak(
    val current: Int,
    val longest: Int,
    val lastActivityDate: LocalDate?,
) {
    fun recordActivity(today: LocalDate): Streak {
        if (lastActivityDate == today) return this

        val yesterday = today.minusDays(1)
        val newCurrent = if (lastActivityDate == yesterday) current + 1 else 1
        val newLongest = maxOf(longest, newCurrent)

        return Streak(
            current = newCurrent,
            longest = newLongest,
            lastActivityDate = today,
        )
    }

    val isActive: Boolean
        get() {
            if (lastActivityDate == null) return false
            val today = LocalDate.now()
            return lastActivityDate == today || lastActivityDate == today.minusDays(1)
        }
}
