package com.microlearn.identity.infrastructure

import com.microlearn.shared.domain.exception.InvalidCredentialsException
import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Component
import org.springframework.web.client.RestClient

data class GoogleUserInfo(
    val googleId: String,
    val email: String,
    val name: String,
    val pictureUrl: String?,
)

@Component
class GoogleTokenVerifier(
    @Value("\${google.client-id:}") private val clientId: String,
) {
    private val restClient = RestClient.create()

    fun verify(idToken: String): GoogleUserInfo {
        try {
            val response = restClient.get()
                .uri("https://oauth2.googleapis.com/tokeninfo?id_token=$idToken")
                .retrieve()
                .body(GoogleTokenInfoResponse::class.java)
                ?: throw InvalidCredentialsException()

            if (clientId.isNotBlank() && response.aud != clientId) {
                throw InvalidCredentialsException()
            }

            return GoogleUserInfo(
                googleId = response.sub,
                email = response.email,
                name = response.name ?: response.email.substringBefore("@"),
                pictureUrl = response.picture,
            )
        } catch (e: InvalidCredentialsException) {
            throw e
        } catch (e: Exception) {
            throw InvalidCredentialsException()
        }
    }
}

private data class GoogleTokenInfoResponse(
    val sub: String = "",
    val email: String = "",
    val name: String? = null,
    val picture: String? = null,
    val aud: String = "",
)
