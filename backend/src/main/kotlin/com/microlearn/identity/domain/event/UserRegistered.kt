package com.microlearn.identity.domain.event

import com.microlearn.shared.domain.DomainEvent
import java.util.UUID

class UserRegistered(
    val userId: UUID,
    val email: String,
    val displayName: String,
) : DomainEvent()
