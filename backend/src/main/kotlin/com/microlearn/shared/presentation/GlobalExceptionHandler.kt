package com.microlearn.shared.presentation

import com.microlearn.shared.domain.exception.AccessDeniedException
import com.microlearn.shared.domain.exception.ConflictException
import com.microlearn.shared.domain.exception.InvalidOperationException
import com.microlearn.shared.domain.exception.NotFoundException
import org.slf4j.LoggerFactory
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.MethodArgumentNotValidException
import org.springframework.web.bind.annotation.ExceptionHandler
import org.springframework.web.bind.annotation.RestControllerAdvice
import java.time.Instant

@RestControllerAdvice
class GlobalExceptionHandler {

    private val log = LoggerFactory.getLogger(javaClass)

    @ExceptionHandler(NotFoundException::class)
    fun handleNotFound(ex: NotFoundException): ResponseEntity<ErrorResponse> =
        ResponseEntity.status(HttpStatus.NOT_FOUND)
            .body(ErrorResponse(ex.code, ex.message))

    @ExceptionHandler(ConflictException::class)
    fun handleConflict(ex: ConflictException): ResponseEntity<ErrorResponse> =
        ResponseEntity.status(HttpStatus.CONFLICT)
            .body(ErrorResponse(ex.code, ex.message))

    @ExceptionHandler(InvalidOperationException::class)
    fun handleBadRequest(ex: InvalidOperationException): ResponseEntity<ErrorResponse> =
        ResponseEntity.status(HttpStatus.BAD_REQUEST)
            .body(ErrorResponse(ex.code, ex.message))

    @ExceptionHandler(AccessDeniedException::class)
    fun handleForbidden(ex: AccessDeniedException): ResponseEntity<ErrorResponse> =
        ResponseEntity.status(HttpStatus.FORBIDDEN)
            .body(ErrorResponse(ex.code, ex.message))

    @ExceptionHandler(MethodArgumentNotValidException::class)
    fun handleValidation(ex: MethodArgumentNotValidException): ResponseEntity<ErrorResponse> =
        ResponseEntity.status(HttpStatus.UNPROCESSABLE_ENTITY)
            .body(
                ErrorResponse(
                    code = "VALIDATION_FAILED",
                    message = "Validation failed",
                    details = ex.bindingResult.fieldErrors.map {
                        FieldError(it.field, it.defaultMessage ?: "")
                    },
                ),
            )

    @ExceptionHandler(Exception::class)
    fun handleUnexpected(ex: Exception): ResponseEntity<ErrorResponse> {
        log.error("Unexpected error", ex)
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
            .body(ErrorResponse("INTERNAL_ERROR", "An unexpected error occurred"))
    }
}

data class ErrorResponse(
    val code: String,
    val message: String,
    val details: List<FieldError>? = null,
    val timestamp: Instant = Instant.now(),
)

data class FieldError(
    val field: String,
    val message: String,
)
