package com.microlearn.gamification.application

import com.microlearn.gamification.application.dto.AchievementResult
import com.microlearn.gamification.application.dto.RankingEntryResult
import com.microlearn.gamification.application.dto.StreakResult
import com.microlearn.gamification.domain.model.UserStreak
import com.microlearn.gamification.domain.repository.AchievementRepository
import com.microlearn.gamification.domain.repository.RankingRepository
import com.microlearn.gamification.domain.repository.StreakRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class GetGamificationUseCase(
    private val streakRepository: StreakRepository,
    private val achievementRepository: AchievementRepository,
    private val rankingRepository: RankingRepository,
) {
    @Transactional(readOnly = true)
    fun getStreak(userId: UUID): StreakResult {
        val userStreak = streakRepository.findByUserId(userId)
            ?: UserStreak(userId = userId)

        return StreakResult(
            currentStreak = userStreak.streak.current,
            longestStreak = userStreak.streak.longest,
            isActive = userStreak.streak.isActive,
            totalXp = userStreak.totalXp.value,
            level = userStreak.level.value,
            xpToNextLevel = userStreak.level.xpToNextLevel(userStreak.totalXp.value),
            levelProgressPercent = userStreak.level.progressPercent(userStreak.totalXp.value),
        )
    }

    @Transactional(readOnly = true)
    fun getAchievements(userId: UUID): List<AchievementResult> {
        val allAchievements = achievementRepository.findAll()
        val earned = achievementRepository.findEarnedByUserId(userId)
        val earnedMap = earned.associate { it.first.slug to it.second.earnedAt }

        return allAchievements.map { a ->
            AchievementResult(
                slug = a.slug,
                nameKo = a.nameKo,
                descriptionKo = a.descriptionKo,
                icon = a.icon,
                xpReward = a.xpReward,
                isEarned = a.slug in earnedMap,
                earnedAt = earnedMap[a.slug]?.toString(),
            )
        }
    }

    @Transactional(readOnly = true)
    fun getCategoryRanking(categorySlug: String): List<RankingEntryResult> =
        rankingRepository.getCategoryRanking(categorySlug).mapIndexed { idx, entry ->
            RankingEntryResult(
                rank = idx + 1,
                userId = entry.userId.toString(),
                displayName = entry.displayName,
                avatarUrl = entry.avatarUrl,
                score = entry.totalScore,
                detail = "${entry.lessonsCompleted}개 완료, 평균 ${entry.avgScore.toInt()}점",
            )
        }

    @Transactional(readOnly = true)
    fun getStreakRanking(): List<RankingEntryResult> =
        rankingRepository.getStreakRanking().mapIndexed { idx, entry ->
            RankingEntryResult(
                rank = idx + 1,
                userId = entry.userId.toString(),
                displayName = entry.displayName,
                avatarUrl = entry.avatarUrl,
                score = entry.currentStreak,
                detail = "최장 ${entry.longestStreak}일",
            )
        }
}
