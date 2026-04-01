package com.microlearn

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class MicrolearnApplication

fun main(args: Array<String>) {
    runApplication<MicrolearnApplication>(*args)
}
