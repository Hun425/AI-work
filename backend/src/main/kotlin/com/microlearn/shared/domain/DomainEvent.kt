package com.microlearn.shared.domain

import java.time.Instant
import java.util.UUID

abstract class DomainEvent(
    val eventId: UUID = UUID.randomUUID(),
    val occurredAt: Instant = Instant.now(),
)
