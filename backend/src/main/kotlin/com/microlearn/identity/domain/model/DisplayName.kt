package com.microlearn.identity.domain.model

@JvmInline
value class DisplayName(val value: String) {
    init {
        require(value.isNotBlank()) { "이름은 비어있을 수 없습니다" }
        require(value.length <= 50) { "이름은 50자 이하여야 합니다" }
    }
}
