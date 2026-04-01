package com.microlearn.learning.presentation

import com.microlearn.learning.application.CompleteLessonUseCase
import com.microlearn.learning.application.GetCourseLessonsUseCase
import com.microlearn.learning.application.dto.CompleteLessonCommand
import com.microlearn.learning.application.dto.LessonCompletionResult
import com.microlearn.learning.application.dto.LessonResult
import com.microlearn.learning.presentation.dto.CompleteLessonRequest
import jakarta.validation.Valid
import org.springframework.http.ResponseEntity
import org.springframework.security.core.Authentication
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController
import java.util.UUID

@RestController
@RequestMapping("/api")
class LessonController(
    private val getCourseLessonsUseCase: GetCourseLessonsUseCase,
    private val completeLessonUseCase: CompleteLessonUseCase,
) {
    @GetMapping("/courses/{courseId}/lessons")
    fun getLessonsByCourse(
        @PathVariable courseId: UUID,
        authentication: Authentication,
    ): ResponseEntity<List<LessonResult>> {
        val userId = UUID.fromString(authentication.principal as String)
        return ResponseEntity.ok(getCourseLessonsUseCase.getLessonsByCourse(courseId, userId))
    }

    @PostMapping("/lessons/{lessonId}/complete")
    fun completeLesson(
        @PathVariable lessonId: UUID,
        @Valid @RequestBody request: CompleteLessonRequest,
        authentication: Authentication,
    ): ResponseEntity<LessonCompletionResult> {
        val userId = UUID.fromString(authentication.principal as String)
        val result = completeLessonUseCase.execute(
            CompleteLessonCommand(
                userId = userId,
                lessonId = lessonId,
                score = request.score,
                answers = request.answers,
                timeSpentSeconds = request.timeSpentSeconds,
            ),
        )
        return ResponseEntity.ok(result)
    }
}
