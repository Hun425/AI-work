package com.microlearn.gamification.application

import com.microlearn.gamification.application.dto.EarnXpCommand
import com.microlearn.gamification.domain.event.XpEarned
import com.microlearn.gamification.domain.model.UserStreak
import com.microlearn.gamification.domain.model.XpPoints
import com.microlearn.gamification.domain.repository.StreakRepository
import com.microlearn.gamification.domain.service.XpCalculator
import org.springframework.context.ApplicationEventPublisher
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class EarnXpUseCase(
    private val streakRepository: StreakRepository,
    private val eventPublisher: ApplicationEventPublisher,
) {
    private val xpCalculator = XpCalculator()

    @Transactional
    fun execute(command: EarnXpCommand) {
        val userStreak = streakRepository.findByUserId(command.userId)
            ?: UserStreak(userId = command.userId)

        val isFirstToday = userStreak.streak.lastActivityDate != java.time.LocalDate.now()

        val xp = xpCalculator.calculateLessonXp(
            score = command.score,
            isPerfect = command.isPerfect,
            isFirstLessonToday = isFirstToday,
        )

        val streakXp = xpCalculator.calculateStreakMilestoneXp(userStreak.streak.current)

        val totalEarned = xp + streakXp
        userStreak.earnXp(totalEarned)
        streakRepository.save(userStreak)

        eventPublisher.publishEvent(
            XpEarned(
                userId = command.userId,
                amount = totalEarned,
                source = "lesson_completion",
                totalXp = userStreak.totalXp.value,
            ),
        )
    }
}
