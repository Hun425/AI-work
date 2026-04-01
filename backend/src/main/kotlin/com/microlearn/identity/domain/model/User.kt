package com.microlearn.identity.domain.model

import java.time.Instant
import java.util.UUID

class User(
    val id: UUID = UUID.randomUUID(),
    val email: Email,
    val googleId: String,
    val displayName: DisplayName,
    val avatarUrl: String? = null,
    val dailyGoalMinutes: Int = 10,
    val subscriptionTier: SubscriptionTier = SubscriptionTier.FREE,
    val createdAt: Instant = Instant.now(),
    val updatedAt: Instant = Instant.now(),
) {
    companion object {
        fun fromGoogle(
            googleId: String,
            email: Email,
            displayName: DisplayName,
            avatarUrl: String?,
        ): User = User(
            googleId = googleId,
            email = email,
            displayName = displayName,
            avatarUrl = avatarUrl,
        )
    }
}
