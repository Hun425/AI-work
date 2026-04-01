package com.microlearn.identity.presentation.dto

import jakarta.validation.constraints.NotBlank

data class GoogleLoginRequest(
    @field:NotBlank(message = "Google ID 토큰은 필수입니다")
    val idToken: String,
)

data class AuthResponse(
    val token: String,
    val userId: String,
    val email: String,
    val displayName: String,
    val isNewUser: Boolean,
)

data class UserProfileResponse(
    val id: String,
    val email: String,
    val displayName: String,
    val avatarUrl: String?,
    val dailyGoalMinutes: Int,
    val subscriptionTier: String,
)
