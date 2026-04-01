package com.microlearn.shared.domain.exception

sealed class DomainException(
    val code: String,
    override val message: String,
) : RuntimeException(message)

// 404
sealed class NotFoundException(code: String, message: String) : DomainException(code, message)

class UserNotFoundException(val userId: String) :
    NotFoundException("USER_NOT_FOUND", "User $userId not found")

class LessonNotFoundException(val lessonId: String) :
    NotFoundException("LESSON_NOT_FOUND", "Lesson $lessonId not found")

class CourseNotFoundException(val courseId: String) :
    NotFoundException("COURSE_NOT_FOUND", "Course $courseId not found")

class CategoryNotFoundException(val slug: String) :
    NotFoundException("CATEGORY_NOT_FOUND", "Category $slug not found")

// 409
sealed class ConflictException(code: String, message: String) : DomainException(code, message)

class EmailAlreadyExistsException(val email: String) :
    ConflictException("EMAIL_EXISTS", "Email $email already exists")

class LessonAlreadyCompletedException(val userId: String, val lessonId: String) :
    ConflictException("LESSON_ALREADY_COMPLETED", "User $userId already completed lesson $lessonId")

// 400
sealed class InvalidOperationException(code: String, message: String) : DomainException(code, message)

class InvalidCredentialsException :
    InvalidOperationException("INVALID_CREDENTIALS", "Invalid email or password")

// 403
sealed class AccessDeniedException(code: String, message: String) : DomainException(code, message)

class PremiumRequiredException :
    AccessDeniedException("PREMIUM_REQUIRED", "Premium subscription required")
