-- =============================================
-- V1: Initial Schema - Microlearn MVP
-- =============================================

-- Users
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    display_name VARCHAR(100) NOT NULL,
    avatar_url VARCHAR(500),
    daily_goal_minutes INT DEFAULT 10,
    subscription_tier VARCHAR(20) DEFAULT 'free',
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- Categories
CREATE TABLE categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug VARCHAR(50) UNIQUE NOT NULL,
    name_ko VARCHAR(100) NOT NULL,
    icon VARCHAR(50),
    color VARCHAR(7),
    sort_order INT DEFAULT 0,
    is_active BOOLEAN DEFAULT true
);

-- Courses
CREATE TABLE courses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id UUID NOT NULL REFERENCES categories(id),
    slug VARCHAR(100) UNIQUE NOT NULL,
    title_ko VARCHAR(200) NOT NULL,
    description_ko TEXT,
    difficulty VARCHAR(20) CHECK (difficulty IN ('beginner', 'intermediate', 'advanced')),
    is_premium BOOLEAN DEFAULT false,
    sort_order INT DEFAULT 0,
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Lessons
CREATE TABLE lessons (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    course_id UUID NOT NULL REFERENCES courses(id) ON DELETE CASCADE,
    sort_order INT NOT NULL,
    title_ko VARCHAR(200) NOT NULL,
    lesson_type VARCHAR(20) NOT NULL CHECK (lesson_type IN ('quiz', 'flashcard', 'reading', 'fill_blank')),
    content JSONB NOT NULL,
    estimated_seconds INT DEFAULT 120,
    created_at TIMESTAMPTZ DEFAULT now()
);

-- User Progress
CREATE TABLE user_progress (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    lesson_id UUID NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
    score INT,
    answers JSONB,
    time_spent_seconds INT,
    completed_at TIMESTAMPTZ DEFAULT now(),
    UNIQUE(user_id, lesson_id)
);

-- User Streaks & XP
CREATE TABLE user_streaks (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID UNIQUE NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    current_streak INT DEFAULT 0,
    longest_streak INT DEFAULT 0,
    last_activity_date DATE,
    total_xp INT DEFAULT 0,
    level INT DEFAULT 1
);

-- Daily Activity
CREATE TABLE daily_activity (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    activity_date DATE NOT NULL DEFAULT CURRENT_DATE,
    lessons_completed INT DEFAULT 0,
    xp_earned INT DEFAULT 0,
    time_spent_seconds INT DEFAULT 0,
    UNIQUE(user_id, activity_date)
);

-- Achievements
CREATE TABLE achievements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    slug VARCHAR(50) UNIQUE NOT NULL,
    name_ko VARCHAR(100) NOT NULL,
    description_ko VARCHAR(300) NOT NULL,
    icon VARCHAR(50),
    xp_reward INT DEFAULT 0,
    condition JSONB NOT NULL
);

CREATE TABLE user_achievements (
    user_id UUID NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    achievement_id UUID NOT NULL REFERENCES achievements(id),
    earned_at TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY(user_id, achievement_id)
);

-- Indexes
CREATE INDEX idx_progress_user ON user_progress(user_id);
CREATE INDEX idx_progress_lesson ON user_progress(lesson_id);
CREATE INDEX idx_daily_activity_date ON daily_activity(user_id, activity_date);
CREATE INDEX idx_courses_category ON courses(category_id);
CREATE INDEX idx_lessons_course ON lessons(course_id);
