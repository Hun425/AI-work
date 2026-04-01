package com.microlearn.identity.domain.repository

import com.microlearn.identity.domain.model.User
import java.util.UUID

interface UserRepository {
    fun save(user: User): User
    fun findById(id: UUID): User?
    fun findByGoogleId(googleId: String): User?
    fun findByEmail(email: String): User?
}
