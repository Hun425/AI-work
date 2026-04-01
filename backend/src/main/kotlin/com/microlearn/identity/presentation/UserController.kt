package com.microlearn.identity.presentation

import com.microlearn.identity.application.GetProfileUseCase
import com.microlearn.identity.presentation.dto.UserProfileResponse
import org.springframework.http.ResponseEntity
import org.springframework.security.core.Authentication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.UUID

@RestController
@RequestMapping("/api/users")
class UserController(
    private val getProfileUseCase: GetProfileUseCase,
) {
    @GetMapping("/me")
    fun getMyProfile(authentication: Authentication): ResponseEntity<UserProfileResponse> {
        val userId = UUID.fromString(authentication.principal as String)
        val result = getProfileUseCase.execute(userId)

        return ResponseEntity.ok(
            UserProfileResponse(
                id = result.id,
                email = result.email,
                displayName = result.displayName,
                avatarUrl = result.avatarUrl,
                dailyGoalMinutes = result.dailyGoalMinutes,
                subscriptionTier = result.subscriptionTier,
            ),
        )
    }
}
