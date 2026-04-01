package com.microlearn.gamification.presentation

import com.microlearn.gamification.application.GetGamificationUseCase
import com.microlearn.gamification.application.dto.RankingEntryResult
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/ranking")
class RankingController(
    private val getGamificationUseCase: GetGamificationUseCase,
) {
    @GetMapping("/category/{slug}")
    fun getCategoryRanking(@PathVariable slug: String): ResponseEntity<List<RankingEntryResult>> =
        ResponseEntity.ok(getGamificationUseCase.getCategoryRanking(slug))

    @GetMapping("/streaks")
    fun getStreakRanking(): ResponseEntity<List<RankingEntryResult>> =
        ResponseEntity.ok(getGamificationUseCase.getStreakRanking())
}
