package com.microlearn.identity.application

import com.microlearn.identity.application.dto.AuthResult
import com.microlearn.identity.application.dto.GoogleLoginCommand
import com.microlearn.identity.domain.event.UserRegistered
import com.microlearn.identity.domain.model.DisplayName
import com.microlearn.identity.domain.model.Email
import com.microlearn.identity.domain.model.User
import com.microlearn.identity.domain.repository.UserRepository
import com.microlearn.identity.infrastructure.GoogleTokenVerifier
import com.microlearn.identity.infrastructure.JwtTokenProvider
import org.springframework.context.ApplicationEventPublisher
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class GoogleLoginUseCase(
    private val userRepository: UserRepository,
    private val googleTokenVerifier: GoogleTokenVerifier,
    private val jwtTokenProvider: JwtTokenProvider,
    private val eventPublisher: ApplicationEventPublisher,
) {
    @Transactional
    fun execute(command: GoogleLoginCommand): AuthResult {
        val googleUser = googleTokenVerifier.verify(command.googleIdToken)

        val existingUser = userRepository.findByGoogleId(googleUser.googleId)

        val (user, isNewUser) = if (existingUser != null) {
            existingUser to false
        } else {
            val newUser = User.fromGoogle(
                googleId = googleUser.googleId,
                email = Email(googleUser.email),
                displayName = DisplayName(googleUser.name),
                avatarUrl = googleUser.pictureUrl,
            )
            val saved = userRepository.save(newUser)

            eventPublisher.publishEvent(
                UserRegistered(
                    userId = saved.id,
                    email = saved.email.value,
                    displayName = saved.displayName.value,
                ),
            )

            saved to true
        }

        val token = jwtTokenProvider.generateToken(user.id.toString(), user.email.value)

        return AuthResult(
            token = token,
            userId = user.id.toString(),
            email = user.email.value,
            displayName = user.displayName.value,
            isNewUser = isNewUser,
        )
    }
}
