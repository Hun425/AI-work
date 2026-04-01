package com.microlearn.gamification.infrastructure

import com.microlearn.gamification.domain.model.Achievement
import com.microlearn.gamification.domain.model.Streak
import com.microlearn.gamification.domain.model.UserAchievement
import com.microlearn.gamification.domain.model.UserStreak
import com.microlearn.gamification.domain.model.XpPoints
import com.microlearn.gamification.domain.repository.AchievementRepository
import com.microlearn.gamification.domain.repository.CategoryRankingEntry
import com.microlearn.gamification.domain.repository.RankingRepository
import com.microlearn.gamification.domain.repository.StreakRankingEntry
import com.microlearn.gamification.domain.repository.StreakRepository
import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.Id
import jakarta.persistence.IdClass
import jakarta.persistence.Table
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.stereotype.Repository
import java.io.Serializable
import java.time.Instant
import java.time.LocalDate
import java.util.UUID

// === JPA Entities ===

@Entity
@Table(name = "user_streaks")
class UserStreakJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(name = "user_id", unique = true, nullable = false) val userId: UUID = UUID.randomUUID(),
    @Column(name = "current_streak") var currentStreak: Int = 0,
    @Column(name = "longest_streak") var longestStreak: Int = 0,
    @Column(name = "last_activity_date") var lastActivityDate: LocalDate? = null,
    @Column(name = "total_xp") var totalXp: Int = 0,
    var level: Int = 1,
)

@Entity
@Table(name = "achievements")
class AchievementJpaEntity(
    @Id val id: UUID = UUID.randomUUID(),
    @Column(unique = true, nullable = false) val slug: String = "",
    @Column(name = "name_ko", nullable = false) val nameKo: String = "",
    @Column(name = "description_ko", nullable = false) val descriptionKo: String = "",
    val icon: String? = null,
    @Column(name = "xp_reward") val xpReward: Int = 0,
    @Column(nullable = false, columnDefinition = "jsonb") val condition: String = "{}",
)

data class UserAchievementId(
    val userId: UUID = UUID.randomUUID(),
    val achievementId: UUID = UUID.randomUUID(),
) : Serializable

@Entity
@Table(name = "user_achievements")
@IdClass(UserAchievementId::class)
class UserAchievementJpaEntity(
    @Id @Column(name = "user_id") val userId: UUID = UUID.randomUUID(),
    @Id @Column(name = "achievement_id") val achievementId: UUID = UUID.randomUUID(),
    @Column(name = "earned_at") val earnedAt: Instant = Instant.now(),
)

// === Spring Data Repos ===

interface SpringDataStreakRepo : JpaRepository<UserStreakJpaEntity, UUID> {
    fun findByUserId(userId: UUID): UserStreakJpaEntity?
}

interface SpringDataAchievementRepo : JpaRepository<AchievementJpaEntity, UUID>

interface SpringDataUserAchievementRepo : JpaRepository<UserAchievementJpaEntity, UserAchievementId> {
    fun findByUserId(userId: UUID): List<UserAchievementJpaEntity>
}

// === Domain Repository Implementations ===

@Repository
class JpaStreakRepository(private val repo: SpringDataStreakRepo) : StreakRepository {

    override fun save(streak: UserStreak): UserStreak {
        val entity = streak.toJpa()
        return repo.save(entity).toDomain()
    }

    override fun findByUserId(userId: UUID): UserStreak? =
        repo.findByUserId(userId)?.toDomain()
}

@Repository
class JpaAchievementRepository(
    private val achievementRepo: SpringDataAchievementRepo,
    private val userAchievementRepo: SpringDataUserAchievementRepo,
) : AchievementRepository {

    override fun findAll(): List<Achievement> =
        achievementRepo.findAll().map { it.toDomain() }

    override fun saveUserAchievement(userAchievement: UserAchievement) {
        userAchievementRepo.save(
            UserAchievementJpaEntity(
                userId = userAchievement.userId,
                achievementId = userAchievement.achievementId,
                earnedAt = userAchievement.earnedAt,
            ),
        )
    }

    override fun findEarnedSlugs(userId: UUID): Set<String> {
        val earned = userAchievementRepo.findByUserId(userId)
        val allAchievements = achievementRepo.findAll().associateBy { it.id }
        return earned.mapNotNull { allAchievements[it.achievementId]?.slug }.toSet()
    }

    override fun findEarnedByUserId(userId: UUID): List<Pair<Achievement, UserAchievement>> {
        val earned = userAchievementRepo.findByUserId(userId)
        val allAchievements = achievementRepo.findAll().associateBy { it.id }
        return earned.mapNotNull { ua ->
            allAchievements[ua.achievementId]?.toDomain()?.let { a ->
                a to UserAchievement(ua.userId, ua.achievementId, ua.earnedAt)
            }
        }
    }
}

@Repository
class JpaRankingRepository(
    private val streakRepo: SpringDataStreakRepo,
) : RankingRepository {

    // 실제로는 Native Query로 JOIN하지만, MVP에서는 간단한 구현
    @Query(
        "SELECT new map(s.userId as userId, s.currentStreak as currentStreak, s.longestStreak as longestStreak) " +
            "FROM UserStreakJpaEntity s ORDER BY s.currentStreak DESC",
    )
    override fun getStreakRanking(limit: Int): List<StreakRankingEntry> {
        return streakRepo.findAll()
            .sortedByDescending { it.currentStreak }
            .take(limit)
            .map { s ->
                StreakRankingEntry(
                    userId = s.userId,
                    displayName = "User", // MVP: 추후 User 테이블 JOIN
                    avatarUrl = null,
                    currentStreak = s.currentStreak,
                    longestStreak = s.longestStreak,
                )
            }
    }

    override fun getCategoryRanking(categorySlug: String, limit: Int): List<CategoryRankingEntry> {
        // MVP: 추후 Progress + User + Category JOIN 쿼리로 교체
        return emptyList()
    }
}

// === Mapping ===

private fun UserStreakJpaEntity.toDomain() = UserStreak(
    id = id,
    userId = userId,
    streak = Streak(currentStreak, longestStreak, lastActivityDate),
    totalXp = XpPoints(totalXp),
)

private fun UserStreak.toJpa() = UserStreakJpaEntity(
    id = id,
    userId = userId,
    currentStreak = streak.current,
    longestStreak = streak.longest,
    lastActivityDate = streak.lastActivityDate,
    totalXp = totalXp.value,
    level = level.value,
)

private fun AchievementJpaEntity.toDomain() = Achievement(
    id = id,
    slug = slug,
    nameKo = nameKo,
    descriptionKo = descriptionKo,
    icon = icon,
    xpReward = xpReward,
    condition = condition,
)
