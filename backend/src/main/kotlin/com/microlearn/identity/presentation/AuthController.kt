package com.microlearn.identity.presentation

import com.microlearn.identity.application.GoogleLoginUseCase
import com.microlearn.identity.application.dto.GoogleLoginCommand
import com.microlearn.identity.presentation.dto.AuthResponse
import com.microlearn.identity.presentation.dto.GoogleLoginRequest
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api/auth")
class AuthController(
    private val googleLoginUseCase: GoogleLoginUseCase,
) {
    @PostMapping("/google")
    fun googleLogin(
        @Valid @RequestBody request: GoogleLoginRequest,
    ): ResponseEntity<AuthResponse> {
        val result = googleLoginUseCase.execute(
            GoogleLoginCommand(googleIdToken = request.idToken),
        )

        return ResponseEntity.ok(
            AuthResponse(
                token = result.token,
                userId = result.userId,
                email = result.email,
                displayName = result.displayName,
                isNewUser = result.isNewUser,
            ),
        )
    }
}
