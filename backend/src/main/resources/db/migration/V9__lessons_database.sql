INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000004', 1, 'RDBMS 개념', 'flashcard', '{
  "cards": [
    {"front": "RDBMS란 무엇인가?", "back": "관계형 데이터베이스 관리 시스템(Relational Database Management System)으로, 데이터를 테이블(표) 형태로 저장하고 관리하는 소프트웨어 시스템이다. Oracle, MySQL, PostgreSQL, SQL Server 등이 대표적인 예이다.", "hint": "Relational Database Management System"},
    {"front": "테이블, 행, 열의 관계는?", "back": "테이블(Table)은 데이터를 저장하는 2차원 구조이다. 행(Row/Record)은 테이블의 가로 한 줄로 하나의 데이터 항목을 나타낸다. 열(Column/Attribute)은 테이블의 세로 한 줄로 데이터의 속성(필드)을 나타낸다.", "hint": "행 = 레코드, 열 = 속성"},
    {"front": "스키마(Schema)란?", "back": "데이터베이스의 구조와 제약 조건을 정의한 설계도이다. 테이블의 이름, 열 이름, 데이터 타입, 제약 조건 등 데이터베이스의 전체적인 논리적 구조를 기술한다. 외부 스키마, 개념 스키마, 내부 스키마의 3단계로 구분된다.", "hint": "데이터베이스의 설계도"},
    {"front": "DBMS의 주요 역할 4가지는?", "back": "① 데이터 정의(DDL): 테이블 생성·수정·삭제\n② 데이터 조작(DML): 데이터 삽입·조회·수정·삭제\n③ 데이터 제어(DCL): 접근 권한 및 보안 관리\n④ 트랜잭션 관리: 데이터 일관성 및 무결성 보장", "hint": "DDL, DML, DCL, 트랜잭션"},
    {"front": "관계형 모델에서 도메인(Domain)이란?", "back": "각 열(속성)이 가질 수 있는 값의 집합이다. 예를 들어 나이 열의 도메인은 0~150의 정수이고, 성별 열의 도메인은 {''남'', ''여''}일 수 있다. 도메인을 벗어난 값은 저장할 수 없다.", "hint": "열이 가질 수 있는 유효한 값의 범위"}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000004', 2, '기본키와 외래키', 'quiz', '{
  "questions": [
    {"question": "기본키(Primary Key)의 특성으로 올바르지 않은 것은?", "code": null, "options": ["유일성: 테이블 내에서 중복된 값을 가질 수 없다", "최소성: 꼭 필요한 최소한의 속성으로 구성된다", "NULL 허용: 기본키 열은 NULL 값을 가질 수 있다", "불변성: 기본키 값은 자주 변경되지 않아야 한다"], "correct_index": 2, "explanation": "기본키는 반드시 NOT NULL이어야 한다. NULL 값은 기본키로 사용할 수 없으며, 이는 개체 무결성(Entity Integrity) 제약 조건이다."},
    {"question": "다음 SQL에서 외래키(Foreign Key) 제약 조건이 올바르게 설정된 것은?", "code": "-- 부모 테이블\nCREATE TABLE departments (\n  dept_id INT PRIMARY KEY,\n  dept_name VARCHAR(50)\n);\n\n-- 자식 테이블 후보들", "options": ["CREATE TABLE employees (emp_id INT PRIMARY KEY, dept_id INT);", "CREATE TABLE employees (emp_id INT PRIMARY KEY, dept_id INT REFERENCES departments(dept_id));", "CREATE TABLE employees (emp_id INT PRIMARY KEY, dept_id INT REFERENCES employees(emp_id));", "CREATE TABLE employees (emp_id INT FOREIGN KEY, dept_id INT);"], "correct_index": 1, "explanation": "외래키는 REFERENCES 키워드를 사용하여 참조할 부모 테이블과 열을 지정한다. 외래키는 반드시 부모 테이블의 기본키(또는 유일키)를 참조해야 한다."},
    {"question": "참조 무결성(Referential Integrity)에 대한 설명으로 올바른 것은?", "code": null, "options": ["자식 테이블의 외래키 값은 NULL이 될 수 없다", "부모 테이블에 존재하지 않는 값을 자식 테이블의 외래키로 삽입할 수 없다", "부모 테이블의 기본키 값은 반드시 자식 테이블에 존재해야 한다", "외래키가 설정된 열은 중복 값을 가질 수 없다"], "correct_index": 1, "explanation": "참조 무결성은 자식 테이블의 외래키 값이 반드시 부모 테이블의 기본키로 존재하거나 NULL이어야 한다는 제약이다. 부모에 없는 값을 자식에 삽입하면 오류가 발생한다."},
    {"question": "ON DELETE CASCADE 옵션의 동작으로 올바른 것은?", "code": "CREATE TABLE orders (\n  order_id INT PRIMARY KEY,\n  customer_id INT,\n  FOREIGN KEY (customer_id)\n    REFERENCES customers(customer_id)\n    ON DELETE CASCADE\n);", "options": ["고객 삭제 시 해당 고객의 주문도 자동으로 삭제된다", "주문 삭제 시 해당 고객도 자동으로 삭제된다", "고객 삭제 시 주문의 customer_id가 NULL로 변경된다", "고객이 주문을 가지고 있으면 고객 삭제가 불가능하다"], "correct_index": 0, "explanation": "ON DELETE CASCADE는 부모 레코드(고객)가 삭제될 때 해당 레코드를 참조하는 자식 레코드(주문)도 자동으로 함께 삭제되는 옵션이다."},
    {"question": "복합 기본키(Composite Primary Key)를 사용하기에 적합한 테이블은?", "code": null, "options": ["학생 테이블 (학번, 이름, 학과)", "수강 테이블 (학번, 과목코드, 성적) — 학번+과목코드 조합", "교수 테이블 (교수번호, 이름, 부서)", "과목 테이블 (과목코드, 과목명, 학점)"], "correct_index": 1, "explanation": "수강 테이블에서 한 학생이 같은 과목을 중복 수강할 수 없으므로 (학번, 과목코드)의 조합이 유일성을 보장한다. 이처럼 두 개 이상의 열을 합쳐 기본키로 사용하는 것을 복합 기본키라 한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000004', 3, 'SQL SELECT 기초', 'fill_blank', '{
  "questions": [
    {"question": "employees 테이블에서 salary가 3000 이상인 직원의 이름과 급여를 조회하는 쿼리의 빈칸을 채우세요.", "code": "SELECT name, salary\n___ employees\n___ salary >= 3000;", "options": ["FROM / WHERE", "INTO / HAVING", "FROM / HAVING", "IN / WHERE"], "correct_index": 0, "explanation": "SELECT 문의 기본 구조는 SELECT 열 FROM 테이블 WHERE 조건이다. FROM은 조회할 테이블을 지정하고, WHERE는 필터링 조건을 지정한다."},
    {"question": "products 테이블의 모든 열을 조회할 때 빈칸에 들어갈 내용은?", "code": "SELECT ___\nFROM products;", "options": ["* (별표)", "ALL", "EVERY", "DISTINCT"], "correct_index": 0, "explanation": "SELECT * 는 테이블의 모든 열을 조회하는 와일드카드이다. 실무에서는 필요한 열만 명시하는 것이 성능상 유리하다."},
    {"question": "중복을 제거하고 부서 목록만 조회하려면 빈칸에 무엇을 넣어야 하나요?", "code": "SELECT ___ department\nFROM employees;", "options": ["DISTINCT", "UNIQUE", "DIFFERENT", "ONLY"], "correct_index": 0, "explanation": "DISTINCT 키워드는 조회 결과에서 중복된 행을 제거한다. SELECT DISTINCT column_name FROM table_name 형태로 사용한다."},
    {"question": "조회 결과를 salary 기준으로 내림차순 정렬하는 쿼리의 빈칸은?", "code": "SELECT name, salary\nFROM employees\nORDER BY salary ___;", "options": ["DESC", "ASC", "DESCEND", "DOWN"], "correct_index": 0, "explanation": "ORDER BY 절에서 DESC는 내림차순(큰 값 → 작은 값), ASC는 오름차순(작은 값 → 큰 값) 정렬을 지정한다. 기본값은 ASC이다."},
    {"question": "상위 5개의 행만 조회하려면 빈칸에 무엇이 들어가야 하나요? (PostgreSQL 기준)", "code": "SELECT name, salary\nFROM employees\nORDER BY salary DESC\n___ 5;", "options": ["LIMIT", "TOP", "ROWNUM <=", "FETCH FIRST"], "correct_index": 0, "explanation": "PostgreSQL, MySQL에서는 LIMIT N 을 사용하여 조회 행 수를 제한한다. SQL Server에서는 TOP N, Oracle에서는 ROWNUM 또는 FETCH FIRST N ROWS ONLY를 사용한다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000004', 4, 'INSERT/UPDATE/DELETE', 'quiz', '{
  "questions": [
    {"question": "다음 INSERT 문의 실행 결과로 올바른 것은?", "code": "INSERT INTO students (student_id, name, grade)\nVALUES (101, ''김철수'', 3);", "options": ["students 테이블에 새 행이 추가된다", "students 테이블의 기존 행이 수정된다", "students 테이블에서 행이 삭제된다", "students 테이블의 구조가 변경된다"], "correct_index": 0, "explanation": "INSERT INTO ... VALUES ... 문은 테이블에 새로운 행(레코드)을 삽입하는 DML(Data Manipulation Language) 명령이다. 열 목록과 값의 수 및 순서가 일치해야 한다."},
    {"question": "모든 직원의 급여를 10% 인상하는 올바른 UPDATE 문은?", "code": null, "options": ["UPDATE employees SET salary = salary * 1.1;", "UPDATE employees WHERE salary = salary * 1.1;", "MODIFY employees SET salary = salary * 1.1;", "ALTER employees SET salary = salary * 1.1;"], "correct_index": 0, "explanation": "UPDATE 문의 구조는 UPDATE 테이블 SET 열=값 [WHERE 조건]이다. WHERE 절을 생략하면 테이블의 모든 행이 업데이트된다. MODIFY나 ALTER는 잘못된 문법이다."},
    {"question": "특정 조건의 데이터만 삭제하는 올바른 DELETE 문은?", "code": null, "options": ["DELETE FROM orders WHERE order_date < ''2023-01-01'';", "DELETE orders WHERE order_date < ''2023-01-01'';", "REMOVE FROM orders WHERE order_date < ''2023-01-01'';", "DROP FROM orders WHERE order_date < ''2023-01-01'';"], "correct_index": 0, "explanation": "DELETE FROM 테이블 WHERE 조건 구문을 사용한다. WHERE 절 없이 DELETE FROM 테이블을 실행하면 모든 행이 삭제된다. DROP은 테이블 자체를 삭제하는 DDL 명령이다."},
    {"question": "다음 중 DML(Data Manipulation Language)에 해당하지 않는 것은?", "code": null, "options": ["INSERT", "SELECT", "TRUNCATE", "UPDATE"], "correct_index": 2, "explanation": "TRUNCATE는 테이블의 모든 데이터를 삭제하지만 DDL(Data Definition Language)로 분류된다. INSERT, UPDATE, DELETE, SELECT는 DML이다. TRUNCATE는 롤백이 불가능하며 DELETE보다 빠르다."},
    {"question": "다음 UPDATE 문에서 문제점은?", "code": "UPDATE products\nSET price = 0;", "options": ["SET 키워드가 잘못되었다", "WHERE 절이 없어 모든 상품 가격이 0이 된다", "테이블명이 잘못되었다", "price 열 이름이 잘못되었다"], "correct_index": 1, "explanation": "WHERE 절 없는 UPDATE는 테이블의 모든 행을 수정한다. 실수로 실행하면 전체 데이터가 변경되는 치명적인 오류가 발생한다. 항상 WHERE 조건을 확인한 후 UPDATE를 실행해야 한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000004', 5, 'WHERE 조건절', 'fill_blank', '{
  "questions": [
    {"question": "나이가 20세 이상 30세 이하인 학생을 조회하는 조건절의 빈칸을 채우세요.", "code": "SELECT * FROM students\nWHERE age ___ 20 ___ 30;", "options": ["BETWEEN / AND", "FROM / TO", ">= / <=", "IN / AND"], "correct_index": 0, "explanation": "BETWEEN A AND B는 A 이상 B 이하의 범위를 나타내는 조건이다. WHERE age >= 20 AND age <= 30과 동일하지만 더 간결하게 표현할 수 있다."},
    {"question": "이름이 ''김''으로 시작하는 고객을 검색하는 LIKE 패턴은?", "code": "SELECT * FROM customers\nWHERE name LIKE ___;", "options": ["''김%''", "''%김''", "''김_''", "''*김*''"], "correct_index": 0, "explanation": "LIKE에서 %는 0개 이상의 임의 문자를 의미하는 와일드카드이다. ''김%''는 ''김''으로 시작하는 모든 문자열, ''%김''은 ''김''으로 끝나는 문자열, ''%김%''는 ''김''을 포함하는 문자열을 검색한다."},
    {"question": "부서가 ''개발'', ''기획'', ''마케팅'' 중 하나인 직원을 조회하는 조건의 빈칸은?", "code": "SELECT * FROM employees\nWHERE department ___ (''개발'', ''기획'', ''마케팅'');", "options": ["IN", "LIKE", "BETWEEN", "EXISTS"], "correct_index": 0, "explanation": "IN 연산자는 값이 목록 중 하나와 일치하는지 검사한다. WHERE department = ''개발'' OR department = ''기획'' OR department = ''마케팅'' 과 동일하지만 IN을 사용하면 더 간결하다."},
    {"question": "salary가 5000 초과이면서 department가 ''영업''인 조건을 표현하는 논리 연산자는?", "code": "SELECT * FROM employees\nWHERE salary > 5000 ___ department = ''영업'';", "options": ["AND", "OR", "NOT", "XOR"], "correct_index": 0, "explanation": "AND 연산자는 두 조건이 모두 참일 때 행을 반환한다. OR은 둘 중 하나라도 참이면 반환한다. 복잡한 조건에서는 괄호를 사용하여 우선순위를 명확히 해야 한다."},
    {"question": "이메일이 NULL인 고객을 조회하는 올바른 조건은?", "code": "SELECT * FROM customers\nWHERE email ___ NULL;", "options": ["IS", "=", "LIKE", "IN"], "correct_index": 0, "explanation": "NULL 값 비교는 반드시 IS NULL 또는 IS NOT NULL을 사용해야 한다. WHERE email = NULL은 항상 거짓을 반환하며 동작하지 않는다. NULL은 ''알 수 없음''을 의미하므로 일반 비교 연산자를 사용할 수 없다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000004', 6, 'JOIN 개념', 'flashcard', '{
  "cards": [
    {"front": "INNER JOIN이란?", "back": "두 테이블에서 조인 조건을 만족하는 행만 반환한다. 양쪽 테이블 모두에 매칭되는 데이터만 결과에 포함되며, 한쪽에만 있는 데이터는 제외된다.\n\n예: SELECT * FROM A INNER JOIN B ON A.id = B.a_id", "hint": "교집합"},
    {"front": "LEFT (OUTER) JOIN이란?", "back": "왼쪽 테이블의 모든 행을 반환하고, 오른쪽 테이블에서 조건을 만족하는 행을 매칭한다. 오른쪽에 매칭되는 행이 없으면 NULL로 채워진다.\n\n예: 고객 테이블 LEFT JOIN 주문 테이블 → 주문이 없는 고객도 포함", "hint": "왼쪽 테이블 전체 유지"},
    {"front": "RIGHT (OUTER) JOIN이란?", "back": "오른쪽 테이블의 모든 행을 반환하고, 왼쪽 테이블에서 조건을 만족하는 행을 매칭한다. 왼쪽에 매칭이 없으면 NULL로 채워진다. LEFT JOIN의 테이블 순서를 바꾼 것과 동일한 결과를 얻을 수 있다.", "hint": "오른쪽 테이블 전체 유지"},
    {"front": "FULL OUTER JOIN과 CROSS JOIN의 차이는?", "back": "FULL OUTER JOIN: 양쪽 테이블의 모든 행을 포함하며, 매칭되지 않는 쪽은 NULL로 채움. 두 테이블의 합집합.\n\nCROSS JOIN: 두 테이블의 모든 행의 조합을 반환 (카티션 곱). A가 3행, B가 4행이면 결과는 12행. 조인 조건 없음.", "hint": "FULL=합집합, CROSS=곱집합"},
    {"front": "SELF JOIN이란?", "back": "동일한 테이블을 두 번 참조하여 조인하는 방식이다. 테이블에 별칭(alias)을 다르게 부여하여 사용한다.\n\n예: 직원 테이블에서 각 직원의 관리자 이름을 조회할 때\nSELECT e.name, m.name AS 관리자\nFROM employees e JOIN employees m ON e.manager_id = m.emp_id", "hint": "같은 테이블끼리 조인"}
  ]
}', 480),

('c1000000-0000-0000-0000-000000000004', 7, 'JOIN 실전', 'quiz', '{
  "questions": [
    {"question": "다음 INNER JOIN 결과로 반환되는 행의 수는?", "code": "-- customers 테이블: id=1,2,3\n-- orders 테이블: customer_id=1,1,2\n-- (customer_id=3인 주문 없음)\n\nSELECT c.name, o.order_id\nFROM customers c\nINNER JOIN orders o ON c.id = o.customer_id;", "options": ["3행", "2행", "4행", "1행"], "correct_index": 0, "explanation": "INNER JOIN은 양쪽에 매칭되는 행만 반환한다. customer_id=1인 주문 2건 + customer_id=2인 주문 1건 = 총 3행이 반환된다. customer_id=3인 고객은 주문이 없으므로 제외된다."},
    {"question": "LEFT JOIN으로 변경할 경우 반환되는 행의 수는?", "code": "-- customers 테이블: id=1,2,3\n-- orders 테이블: customer_id=1,1,2\n\nSELECT c.name, o.order_id\nFROM customers c\nLEFT JOIN orders o ON c.id = o.customer_id;", "options": ["4행", "3행", "2행", "6행"], "correct_index": 0, "explanation": "LEFT JOIN은 왼쪽(customers) 테이블의 모든 행을 포함한다. id=1 고객(2건) + id=2 고객(1건) + id=3 고객(주문 없어 NULL, 1건) = 총 4행이 반환된다."},
    {"question": "다음 쿼리에서 별칭(alias) 사용의 목적은?", "code": "SELECT e.name AS 직원명,\n       d.dept_name AS 부서명\nFROM employees e\nJOIN departments d ON e.dept_id = d.dept_id;", "options": ["쿼리를 짧게 작성하고 결과 열 이름을 명확하게 표시하기 위해", "JOIN 성능을 향상시키기 위해", "WHERE 조건 없이 전체 데이터를 조회하기 위해", "중복 데이터를 제거하기 위해"], "correct_index": 0, "explanation": "테이블 별칭(e, d)은 긴 테이블 이름을 짧게 참조할 수 있게 해준다. 열 별칭(AS 직원명)은 결과 헤더를 원하는 이름으로 표시한다. 특히 여러 테이블 조인 시 어느 테이블의 열인지 명확히 구분할 수 있다."},
    {"question": "세 테이블을 조인할 때 올바른 쿼리 구조는?", "code": null, "options": ["FROM A JOIN B ON A.id=B.a_id JOIN C ON B.id=C.b_id", "FROM A, B, C JOIN ON A.id=B.id=C.id", "FROM A JOIN (B JOIN C)", "JOIN A, B, C ON A.id=B.id AND B.id=C.id"], "correct_index": 0, "explanation": "여러 테이블을 조인할 때는 JOIN ... ON 절을 순서대로 추가한다. 앞선 조인 결과에 다음 테이블을 계속 조인하는 방식이며, 각 JOIN마다 ON 조건을 명시해야 한다."},
    {"question": "다음 쿼리에서 NULL이 반환되는 상황은?", "code": "SELECT c.name, o.order_id\nFROM customers c\nLEFT JOIN orders o ON c.id = o.customer_id\nWHERE o.order_id IS NULL;", "options": ["주문이 한 번도 없는 고객만 조회된다", "주문이 있는 고객만 조회된다", "모든 고객과 모든 주문이 조회된다", "주문 테이블이 비어있을 때만 결과가 나온다"], "correct_index": 0, "explanation": "LEFT JOIN에서 오른쪽 테이블에 매칭 행이 없으면 그 열들은 NULL이 된다. WHERE o.order_id IS NULL 조건을 추가하면 주문이 없는 고객만 필터링된다. 이는 ''한 번도 주문하지 않은 고객 찾기'' 패턴으로 자주 사용된다."}
  ]
}', 660),

('c1000000-0000-0000-0000-000000000004', 8, '서브쿼리', 'reading', '{
  "questions": [
    {"question": "다음 서브쿼리의 실행 결과는?", "code": "SELECT name, salary\nFROM employees\nWHERE salary > (\n  SELECT AVG(salary)\n  FROM employees\n);", "options": ["평균 급여보다 높은 급여를 받는 직원 목록이 반환된다", "가장 높은 급여를 받는 직원 1명이 반환된다", "평균 급여와 동일한 급여를 받는 직원이 반환된다", "모든 직원의 급여 평균이 반환된다"], "correct_index": 0, "explanation": "WHERE 절의 서브쿼리는 먼저 실행되어 단일 값(평균 급여)을 반환한다. 외부 쿼리는 이 값보다 salary가 큰 직원을 필터링한다. 이처럼 WHERE 절에 서브쿼리를 사용하면 집계 결과를 필터 조건으로 활용할 수 있다."},
    {"question": "FROM 절 서브쿼리(인라인 뷰)에 대한 설명으로 올바른 것은?", "code": "SELECT dept_name, avg_sal\nFROM (\n  SELECT d.dept_name,\n         AVG(e.salary) AS avg_sal\n  FROM employees e\n  JOIN departments d ON e.dept_id = d.dept_id\n  GROUP BY d.dept_name\n) AS dept_avg\nWHERE avg_sal > 4000;
