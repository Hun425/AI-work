package com.microlearn.gamification.domain.model

data class Level(val value: Int) {
    init {
        require(value >= 1) { "Level must be at least 1" }
    }

    val xpRequired: Int get() = 100 * value * value

    companion object {
        fun fromTotalXp(totalXp: Int): Level {
            var level = 1
            while (100 * (level + 1) * (level + 1) <= totalXp) {
                level++
            }
            return Level(level)
        }
    }

    fun xpToNextLevel(currentXp: Int): Int {
        val nextLevelXp = 100 * (value + 1) * (value + 1)
        return (nextLevelXp - currentXp).coerceAtLeast(0)
    }

    fun progressPercent(currentXp: Int): Double {
        val currentLevelXp = xpRequired
        val nextLevelXp = 100 * (value + 1) * (value + 1)
        val range = nextLevelXp - currentLevelXp
        if (range <= 0) return 100.0
        return ((currentXp - currentLevelXp).toDouble() / range * 100).coerceIn(0.0, 100.0)
    }
}
