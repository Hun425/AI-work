package com.microlearn.gamification.domain.policy

import com.microlearn.gamification.application.EarnXpUseCase
import com.microlearn.gamification.application.UpdateStreakUseCase
import com.microlearn.gamification.application.dto.EarnXpCommand
import com.microlearn.learning.domain.event.LessonCompleted
import org.springframework.modulith.events.ApplicationModuleListener
import org.springframework.stereotype.Component

@Component
class LessonCompletedPolicy(
    private val earnXpUseCase: EarnXpUseCase,
    private val updateStreakUseCase: UpdateStreakUseCase,
) {
    @ApplicationModuleListener
    fun on(event: LessonCompleted) {
        // 1. Update streak
        updateStreakUseCase.execute(event.userId)

        // 2. Earn XP
        earnXpUseCase.execute(
            EarnXpCommand(
                userId = event.userId,
                score = event.score,
                isPerfect = event.isPerfect,
                timeSpentSeconds = event.timeSpentSeconds,
            ),
        )
    }
}
