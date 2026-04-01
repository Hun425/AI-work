package com.microlearn.gamification.presentation

import com.microlearn.gamification.application.GetGamificationUseCase
import com.microlearn.gamification.application.dto.AchievementResult
import com.microlearn.gamification.application.dto.StreakResult
import org.springframework.http.ResponseEntity
import org.springframework.security.core.Authentication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.UUID

@RestController
@RequestMapping("/api/gamification")
class GamificationController(
    private val getGamificationUseCase: GetGamificationUseCase,
) {
    @GetMapping("/streak")
    fun getStreak(authentication: Authentication): ResponseEntity<StreakResult> {
        val userId = UUID.fromString(authentication.principal as String)
        return ResponseEntity.ok(getGamificationUseCase.getStreak(userId))
    }

    @GetMapping("/achievements")
    fun getAchievements(authentication: Authentication): ResponseEntity<List<AchievementResult>> {
        val userId = UUID.fromString(authentication.principal as String)
        return ResponseEntity.ok(getGamificationUseCase.getAchievements(userId))
    }
}
