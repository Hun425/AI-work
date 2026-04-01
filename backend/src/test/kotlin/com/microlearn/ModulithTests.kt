package com.microlearn

import org.junit.jupiter.api.Test
import org.springframework.modulith.core.ApplicationModules

class ModulithTests {

    @Test
    fun verifyModularStructure() {
        val modules = ApplicationModules.of(MicrolearnApplication::class.java)
        modules.verify()
    }
}
