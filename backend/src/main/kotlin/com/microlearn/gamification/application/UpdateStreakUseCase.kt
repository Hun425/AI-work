package com.microlearn.gamification.application

import com.microlearn.gamification.domain.model.UserStreak
import com.microlearn.gamification.domain.repository.StreakRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.LocalDate
import java.util.UUID

@Service
class UpdateStreakUseCase(
    private val streakRepository: StreakRepository,
) {
    @Transactional
    fun execute(userId: UUID) {
        val userStreak = streakRepository.findByUserId(userId)
            ?: UserStreak(userId = userId)

        userStreak.recordActivity(LocalDate.now())
        streakRepository.save(userStreak)
    }
}
