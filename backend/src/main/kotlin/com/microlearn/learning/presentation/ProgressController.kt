package com.microlearn.learning.presentation

import com.microlearn.learning.application.GetDailyProgressUseCase
import com.microlearn.learning.application.dto.DailyProgressResult
import org.springframework.http.ResponseEntity
import org.springframework.security.core.Authentication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import java.util.UUID

@RestController
@RequestMapping("/api/progress")
class ProgressController(
    private val getDailyProgressUseCase: GetDailyProgressUseCase,
) {
    @GetMapping("/daily")
    fun getDailyProgress(
        @RequestParam(defaultValue = "10") dailyGoalMinutes: Int,
        authentication: Authentication,
    ): ResponseEntity<DailyProgressResult> {
        val userId = UUID.fromString(authentication.principal as String)
        return ResponseEntity.ok(getDailyProgressUseCase.execute(userId, dailyGoalMinutes))
    }
}
