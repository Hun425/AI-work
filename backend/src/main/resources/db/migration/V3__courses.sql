-- =============================================
-- V3: Courses for algorithms & cs-fundamentals
-- =============================================

-- Get category IDs
-- algorithms category
INSERT INTO courses (id, category_id, slug, title_ko, description_ko, difficulty, sort_order) VALUES
-- 자료구조/알고리즘 코스
('a1000000-0000-0000-0000-000000000001', (SELECT id FROM categories WHERE slug='algorithms'), 'array-string', '배열과 문자열', '배열, 문자열 조작, 투 포인터, 이진 탐색의 기초를 다집니다', 'beginner', 1),
('a1000000-0000-0000-0000-000000000002', (SELECT id FROM categories WHERE slug='algorithms'), 'stack-queue', '스택과 큐', 'LIFO/FIFO 자료구조와 활용 문제를 학습합니다', 'beginner', 2),
('a1000000-0000-0000-0000-000000000003', (SELECT id FROM categories WHERE slug='algorithms'), 'linked-list', '연결 리스트', '단일/이중 연결리스트 구현과 핵심 알고리즘을 학습합니다', 'intermediate', 3),
('a1000000-0000-0000-0000-000000000004', (SELECT id FROM categories WHERE slug='algorithms'), 'tree-graph', '트리와 그래프', '이진트리, BST, 그래프 탐색(DFS/BFS)을 학습합니다', 'intermediate', 4),
('a1000000-0000-0000-0000-000000000005', (SELECT id FROM categories WHERE slug='algorithms'), 'sorting-searching', '정렬과 탐색', '주요 정렬 알고리즘과 탐색 기법을 비교 분석합니다', 'intermediate', 5),
('a1000000-0000-0000-0000-000000000006', (SELECT id FROM categories WHERE slug='algorithms'), 'dynamic-programming', '동적 프로그래밍', 'DP의 핵심 개념과 대표 문제 유형을 마스터합니다', 'advanced', 6),

-- CS 전공 기초 코스
('c1000000-0000-0000-0000-000000000001', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'computer-architecture', '컴퓨터 구조', 'CPU, 메모리 계층, 캐시, 가상 메모리의 원리를 학습합니다', 'beginner', 1),
('c1000000-0000-0000-0000-000000000002', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'operating-system', '운영체제', '프로세스, 스레드, 동기화, 메모리 관리를 학습합니다', 'beginner', 2),
('c1000000-0000-0000-0000-000000000003', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'network', '네트워크', 'OSI 7계층, TCP/IP, HTTP, DNS 등 네트워크 핵심을 학습합니다', 'intermediate', 3),
('c1000000-0000-0000-0000-000000000004', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'database', '데이터베이스', 'SQL, 정규화, 인덱스, 트랜잭션 등 DB 핵심을 학습합니다', 'intermediate', 4),
('c1000000-0000-0000-0000-000000000005', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'design-patterns', '디자인 패턴', 'GoF 디자인 패턴과 SOLID 원칙을 학습합니다', 'intermediate', 5),
('c1000000-0000-0000-0000-000000000006', (SELECT id FROM categories WHERE slug='cs-fundamentals'), 'software-engineering', '소프트웨어 공학', '개발 방법론, Git, CI/CD, 클린코드를 학습합니다', 'advanced', 6);
