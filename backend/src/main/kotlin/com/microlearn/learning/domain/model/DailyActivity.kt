package com.microlearn.learning.domain.model

import java.time.LocalDate
import java.util.UUID

class DailyActivity(
    val id: UUID = UUID.randomUUID(),
    val userId: UUID,
    val activityDate: LocalDate = LocalDate.now(),
    var lessonsCompleted: Int = 0,
    var xpEarned: Int = 0,
    var timeSpentSeconds: Int = 0,
) {
    fun recordLesson(xp: Int, seconds: Int) {
        lessonsCompleted++
        xpEarned += xp
        timeSpentSeconds += seconds
    }
}
