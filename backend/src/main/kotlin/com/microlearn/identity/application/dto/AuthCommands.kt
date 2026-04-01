package com.microlearn.identity.application.dto

data class GoogleLoginCommand(
    val googleIdToken: String,
)

data class AuthResult(
    val token: String,
    val userId: String,
    val email: String,
    val displayName: String,
    val isNewUser: Boolean,
)

data class UserProfileResult(
    val id: String,
    val email: String,
    val displayName: String,
    val avatarUrl: String?,
    val dailyGoalMinutes: Int,
    val subscriptionTier: String,
)
