package com.microlearn.identity.application

import com.microlearn.identity.application.dto.UserProfileResult
import com.microlearn.identity.domain.repository.UserRepository
import com.microlearn.shared.domain.exception.UserNotFoundException
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.util.UUID

@Service
class GetProfileUseCase(
    private val userRepository: UserRepository,
) {
    @Transactional(readOnly = true)
    fun execute(userId: UUID): UserProfileResult {
        val user = userRepository.findById(userId)
            ?: throw UserNotFoundException(userId.toString())

        return UserProfileResult(
            id = user.id.toString(),
            email = user.email.value,
            displayName = user.displayName.value,
            avatarUrl = user.avatarUrl,
            dailyGoalMinutes = user.dailyGoalMinutes,
            subscriptionTier = user.subscriptionTier.name,
        )
    }
}
