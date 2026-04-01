package com.microlearn.learning.presentation

import com.microlearn.learning.application.GetCategoriesUseCase
import com.microlearn.learning.application.GetCourseLessonsUseCase
import com.microlearn.learning.application.dto.CategoryResult
import com.microlearn.learning.application.dto.CourseResult
import org.springframework.http.ResponseEntity
import org.springframework.security.core.Authentication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.UUID

@RestController
@RequestMapping("/api/categories")
class CategoryController(
    private val getCategoriesUseCase: GetCategoriesUseCase,
    private val getCourseLessonsUseCase: GetCourseLessonsUseCase,
) {
    @GetMapping
    fun getCategories(): ResponseEntity<List<CategoryResult>> =
        ResponseEntity.ok(getCategoriesUseCase.execute())

    @GetMapping("/{slug}/courses")
    fun getCoursesByCategory(
        @PathVariable slug: String,
        authentication: Authentication,
    ): ResponseEntity<List<CourseResult>> {
        val userId = UUID.fromString(authentication.principal as String)
        return ResponseEntity.ok(getCourseLessonsUseCase.getCoursesByCategory(slug, userId))
    }
}
