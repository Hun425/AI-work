pluginManagement {
    repositories {
        mavenCentral()
        maven("https://repo.spring.io/milestone")
        // gradlePluginPortal uses plugins-artifacts.gradle.org which is blocked.
        // All needed plugins are available on Maven Central.
    }
}

rootProject.name = "microlearn"
