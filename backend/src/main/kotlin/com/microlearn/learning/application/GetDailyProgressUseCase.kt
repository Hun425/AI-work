package com.microlearn.learning.application

import com.microlearn.learning.application.dto.DailyProgressResult
import com.microlearn.learning.domain.repository.DailyActivityRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.LocalDate
import java.util.UUID

@Service
class GetDailyProgressUseCase(
    private val dailyActivityRepository: DailyActivityRepository,
) {
    @Transactional(readOnly = true)
    fun execute(userId: UUID, dailyGoalMinutes: Int): DailyProgressResult {
        val today = LocalDate.now()
        val activity = dailyActivityRepository.findByUserIdAndDate(userId, today)

        return DailyProgressResult(
            lessonsCompleted = activity?.lessonsCompleted ?: 0,
            xpEarned = activity?.xpEarned ?: 0,
            timeSpentSeconds = activity?.timeSpentSeconds ?: 0,
            dailyGoalMinutes = dailyGoalMinutes,
        )
    }
}
