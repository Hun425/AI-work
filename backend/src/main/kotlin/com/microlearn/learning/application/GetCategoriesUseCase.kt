package com.microlearn.learning.application

import com.microlearn.learning.application.dto.CategoryResult
import com.microlearn.learning.domain.repository.CategoryRepository
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional

@Service
class GetCategoriesUseCase(
    private val categoryRepository: CategoryRepository,
) {
    @Transactional(readOnly = true)
    fun execute(): List<CategoryResult> =
        categoryRepository.findAll()
            .filter { it.isActive }
            .sortedBy { it.sortOrder }
            .map { cat ->
                CategoryResult(
                    id = cat.id.toString(),
                    slug = cat.slug,
                    nameKo = cat.nameKo,
                    icon = cat.icon,
                    color = cat.color,
                )
            }
}
