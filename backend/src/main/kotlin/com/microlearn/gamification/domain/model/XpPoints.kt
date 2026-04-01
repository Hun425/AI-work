package com.microlearn.gamification.domain.model

data class XpPoints(val value: Int) {
    init {
        require(value >= 0) { "XP cannot be negative" }
    }

    operator fun plus(other: XpPoints) = XpPoints(value + other.value)
    operator fun plus(amount: Int) = XpPoints(value + amount)
}
