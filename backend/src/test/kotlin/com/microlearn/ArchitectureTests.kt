package com.microlearn

import com.tngtech.archunit.core.importer.ImportOption
import com.tngtech.archunit.junit.AnalyzeClasses
import com.tngtech.archunit.junit.ArchTest
import com.tngtech.archunit.lang.ArchRule
import com.tngtech.archunit.lang.syntax.ArchRuleDefinition.classes
import com.tngtech.archunit.lang.syntax.ArchRuleDefinition.noClasses
import com.tngtech.archunit.library.Architectures

@AnalyzeClasses(
    packages = ["com.microlearn"],
    importOptions = [ImportOption.DoNotIncludeTests::class],
)
class ArchitectureTests {

    // Domain must not depend on Spring or JPA
    @ArchTest
    val domainShouldNotDependOnSpring: ArchRule = noClasses()
        .that().resideInAPackage("..domain..")
        .should().dependOnClassesThat()
        .resideInAnyPackage(
            "org.springframework..",
            "jakarta.persistence..",
            "jakarta.transaction..",
        )
        .because("Domain layer must be framework-independent")

    // Domain must not depend on infrastructure or presentation
    @ArchTest
    val domainShouldNotDependOnOuterLayers: ArchRule = noClasses()
        .that().resideInAPackage("..domain..")
        .should().dependOnClassesThat()
        .resideInAnyPackage("..infrastructure..", "..presentation..")
        .because("Domain layer must not depend on outer layers")

    // Application layer must not depend on infrastructure or presentation
    @ArchTest
    val applicationShouldNotDependOnInfraOrPresentation: ArchRule = noClasses()
        .that().resideInAPackage("..application..")
        .should().dependOnClassesThat()
        .resideInAnyPackage("..infrastructure..", "..presentation..")
        .because("Application layer should only depend on domain")

    // Controllers must end with "Controller"
    @ArchTest
    val controllerNaming: ArchRule = classes()
        .that().resideInAPackage("..presentation..")
        .and().areAnnotatedWith(org.springframework.web.bind.annotation.RestController::class.java)
        .should().haveSimpleNameEndingWith("Controller")

    // Bounded Context isolation: Learning must not directly depend on Gamification
    @ArchTest
    val learningMustNotDependOnGamification: ArchRule = noClasses()
        .that().resideInAPackage("..learning..")
        .should().dependOnClassesThat()
        .resideInAPackage("..gamification..")
        .because("Bounded Contexts communicate via Domain Events only")

    // Bounded Context isolation: Gamification must not directly depend on Learning
    @ArchTest
    val gamificationMustNotDependOnLearning: ArchRule = noClasses()
        .that().resideInAPackage("..gamification..")
        .should().dependOnClassesThat()
        .resideInAPackage("..learning..")
        .because("Bounded Contexts communicate via Domain Events only")

    // Identity must not depend on other BCs
    @ArchTest
    val identityMustNotDependOnOtherBCs: ArchRule = noClasses()
        .that().resideInAPackage("..identity..")
        .should().dependOnClassesThat()
        .resideInAnyPackage("..learning..", "..gamification..", "..ai..")
        .because("Identity BC should be independent")
}
