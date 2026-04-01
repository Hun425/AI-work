package com.microlearn.learning.domain.model

import java.util.UUID

class Category(
    val id: UUID = UUID.randomUUID(),
    val slug: String,
    val nameKo: String,
    val icon: String?,
    val color: String?,
    val sortOrder: Int = 0,
    val isActive: Boolean = true,
)
