-- V2: Seed initial categories
INSERT INTO categories (slug, name_ko, icon, color, sort_order) VALUES
    ('python', 'Python', '🐍', '#3776AB', 1),
    ('javascript', 'JavaScript', '⚡', '#F7DF1E', 2),
    ('algorithms', '알고리즘', '🧩', '#FF6B6B', 3),
    ('cs-fundamentals', 'CS 기초', '💻', '#6C5CE7', 4);

-- Seed achievements
INSERT INTO achievements (slug, name_ko, description_ko, icon, xp_reward, condition) VALUES
    ('first_lesson', '첫 걸음', '첫 번째 레슨을 완료했습니다', '👣', 10, '{"type": "lessons_completed", "value": 1}'),
    ('streak_3', '3일 연속', '3일 연속으로 학습했습니다', '🔥', 30, '{"type": "streak", "value": 3}'),
    ('streak_7', '일주일 달성', '7일 연속으로 학습했습니다', '🔥', 50, '{"type": "streak", "value": 7}'),
    ('streak_30', '한 달 달성', '30일 연속으로 학습했습니다', '🏆', 200, '{"type": "streak", "value": 30}'),
    ('perfect_score', '만점왕', '퀴즈에서 만점을 받았습니다', '⭐', 20, '{"type": "perfect_score", "value": 1}'),
    ('category_explorer', '탐험가', '모든 카테고리에서 레슨을 완료했습니다', '🗺️', 50, '{"type": "categories_explored", "value": 4}'),
    ('speed_learner', '빠른 학습자', '레슨을 2분 이내에 완료했습니다', '⚡', 15, '{"type": "speed_complete", "value": 120}'),
    ('level_5', '성장 중', '레벨 5에 도달했습니다', '📈', 100, '{"type": "level", "value": 5}');
