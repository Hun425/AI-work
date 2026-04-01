package com.microlearn.identity.infrastructure

import com.microlearn.identity.domain.model.DisplayName
import com.microlearn.identity.domain.model.Email
import com.microlearn.identity.domain.model.SubscriptionTier
import com.microlearn.identity.domain.model.User
import com.microlearn.identity.domain.repository.UserRepository
import jakarta.persistence.Column
import jakarta.persistence.Entity
import jakarta.persistence.EnumType
import jakarta.persistence.Enumerated
import jakarta.persistence.Id
import jakarta.persistence.Table
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import java.time.Instant
import java.util.UUID

@Entity
@Table(name = "users")
class UserJpaEntity(
    @Id
    val id: UUID = UUID.randomUUID(),

    @Column(unique = true, nullable = false)
    val email: String = "",

    @Column(name = "google_id", unique = true, nullable = false)
    val googleId: String = "",

    @Column(name = "display_name", nullable = false)
    var displayName: String = "",

    @Column(name = "avatar_url")
    var avatarUrl: String? = null,

    @Column(name = "daily_goal_minutes")
    var dailyGoalMinutes: Int = 10,

    @Column(name = "subscription_tier")
    @Enumerated(EnumType.STRING)
    var subscriptionTier: SubscriptionTier = SubscriptionTier.FREE,

    @Column(name = "created_at")
    val createdAt: Instant = Instant.now(),

    @Column(name = "updated_at")
    var updatedAt: Instant = Instant.now(),
)

interface SpringDataUserRepository : JpaRepository<UserJpaEntity, UUID> {
    fun findByGoogleId(googleId: String): UserJpaEntity?
    fun findByEmail(email: String): UserJpaEntity?
}

@Repository
class JpaUserRepository(
    private val springDataRepo: SpringDataUserRepository,
) : UserRepository {

    override fun save(user: User): User {
        val entity = user.toJpaEntity()
        val saved = springDataRepo.save(entity)
        return saved.toDomain()
    }

    override fun findById(id: UUID): User? =
        springDataRepo.findById(id).orElse(null)?.toDomain()

    override fun findByGoogleId(googleId: String): User? =
        springDataRepo.findByGoogleId(googleId)?.toDomain()

    override fun findByEmail(email: String): User? =
        springDataRepo.findByEmail(email)?.toDomain()
}

// Mapping extensions
private fun User.toJpaEntity() = UserJpaEntity(
    id = id,
    email = email.value,
    googleId = googleId,
    displayName = displayName.value,
    avatarUrl = avatarUrl,
    dailyGoalMinutes = dailyGoalMinutes,
    subscriptionTier = subscriptionTier,
    createdAt = createdAt,
    updatedAt = updatedAt,
)

private fun UserJpaEntity.toDomain() = User(
    id = id,
    email = Email(email),
    googleId = googleId,
    displayName = DisplayName(displayName),
    avatarUrl = avatarUrl,
    dailyGoalMinutes = dailyGoalMinutes,
    subscriptionTier = subscriptionTier,
    createdAt = createdAt,
    updatedAt = updatedAt,
)
