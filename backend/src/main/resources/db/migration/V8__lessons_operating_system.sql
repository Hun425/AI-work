INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000002', 1, '운영체제란?', 'flashcard', '{"cards":[{"front":"운영체제(OS)란 무엇인가?","back":"하드웨어와 사용자 사이에서 중재자 역할을 하는 시스템 소프트웨어로, 컴퓨터 자원을 관리하고 응용 프로그램 실행 환경을 제공한다.","hint":null},{"front":"운영체제의 핵심 역할 4가지는?","back":"① 프로세스 관리 ② 메모리 관리 ③ 파일 시스템 관리 ④ 입출력(I/O) 장치 관리","hint":"자원 관리 측면에서 생각해보세요."},{"front":"커널(Kernel)이란?","back":"운영체제의 핵심 구성 요소로, 하드웨어와 직접 상호작용하며 프로세스·메모리·장치를 관리하는 상주 프로그램이다.","hint":null},{"front":"운영체제의 목표 두 가지는?","back":"① 편의성: 사용자가 컴퓨터를 편리하게 사용할 수 있도록 환경 제공 ② 효율성: 시스템 자원을 효율적으로 관리하여 성능 극대화","hint":null},{"front":"시스템 콜(System Call)이란?","back":"사용자 프로그램이 운영체제의 서비스를 요청하기 위해 커널에 접근하는 인터페이스. 예) open(), read(), write(), fork()","hint":"유저 모드에서 커널 모드로 전환하는 방법을 생각해보세요."}]}', 420),

('c1000000-0000-0000-0000-000000000002', 2, '커널과 유저 모드', 'quiz', '{"questions":[{"question":"커널 모드(Kernel Mode)와 유저 모드(User Mode)를 구분하는 주된 이유는?","code":null,"options":["CPU 사용률을 높이기 위해","시스템 자원을 보호하고 잘못된 접근을 방지하기 위해","메모리 속도를 향상시키기 위해","멀티코어 처리를 지원하기 위해"],"correct_index":1,"explanation":"유저 모드에서는 하드웨어 자원에 직접 접근할 수 없으며, 운영체제 서비스가 필요할 때 시스템 콜을 통해 커널 모드로 전환함으로써 자원을 보호한다."},{"question":"다음 중 시스템 콜(System Call) 호출 시 발생하는 모드 전환의 순서로 올바른 것은?","code":null,"options":["유저 모드 → 커널 모드 → 유저 모드","커널 모드 → 유저 모드 → 커널 모드","유저 모드 → 유저 모드 → 커널 모드","커널 모드 → 커널 모드 → 유저 모드"],"correct_index":0,"explanation":"사용자 프로그램은 유저 모드에서 실행되다가 시스템 콜을 요청하면 커널 모드로 전환되어 서비스를 수행한 후 다시 유저 모드로 복귀한다."},{"question":"모드 비트(Mode Bit)가 0일 때 의미하는 것은?","code":null,"options":["유저 모드","슬립 모드","커널 모드","인터럽트 모드"],"correct_index":2,"explanation":"모드 비트가 0이면 커널 모드, 1이면 유저 모드를 나타낸다. 커널 모드에서는 모든 명령어 실행이 허용된다."},{"question":"다음 중 커널 모드에서만 실행 가능한 명령어는?","code":null,"options":["사칙연산","문자열 비교","I/O 장치 접근 명령","배열 정렬"],"correct_index":2,"explanation":"I/O 장치 접근, 인터럽트 처리, 메모리 관리 등은 특권 명령어로 커널 모드에서만 실행 가능하다. 사칙연산이나 문자열 비교는 유저 모드에서도 실행된다."},{"question":"인터럽트(Interrupt)와 트랩(Trap)의 차이점은?","code":null,"options":["인터럽트는 소프트웨어가 발생, 트랩은 하드웨어가 발생","인터럽트는 하드웨어가 발생, 트랩은 소프트웨어(시스템 콜 등)가 발생","둘 다 동일한 개념","인터럽트는 커널에서, 트랩은 유저에서 처리"],"correct_index":1,"explanation":"인터럽트는 타이머, I/O 완료 등 하드웨어에 의해 발생하고, 트랩은 시스템 콜 호출이나 예외(오류) 등 소프트웨어에 의해 발생한다."}]}', 480),

('c1000000-0000-0000-0000-000000000002', 3, '프로세스 개념', 'flashcard', '{"cards":[{"front":"프로그램(Program)과 프로세스(Process)의 차이는?","back":"프로그램은 디스크에 저장된 실행 파일(수동적 개체)이고, 프로세스는 메모리에 올라와 실행 중인 프로그램(능동적 개체)이다.","hint":null},{"front":"PCB(Process Control Block)란?","back":"운영체제가 각 프로세스를 관리하기 위해 유지하는 자료구조. PID, 프로세스 상태, 프로그램 카운터, 레지스터, 메모리 정보, 스케줄링 정보 등을 포함한다.","hint":null},{"front":"프로세스의 메모리 구조 4가지는?","back":"① 텍스트(코드) 영역: 실행 코드 ② 데이터 영역: 전역/정적 변수 ③ 힙(Heap): 동적 할당 메모리 ④ 스택(Stack): 함수 호출 정보, 지역 변수","hint":"위→아래 방향으로 스택, 아래→위 방향으로 힙이 증가합니다."},{"front":"프로세스 ID(PID)란?","back":"운영체제가 각 프로세스를 식별하기 위해 부여하는 고유한 정수 값. 프로세스 생성 시 할당되며 종료 시 반환된다.","hint":null},{"front":"독립 프로세스와 협력 프로세스의 차이는?","back":"독립 프로세스는 다른 프로세스와 데이터를 공유하지 않으며 영향을 주고받지 않는다. 협력 프로세스는 다른 프로세스와 데이터를 공유하거나 상호 영향을 미친다. IPC가 필요하다.","hint":null}]}', 420),

('c1000000-0000-0000-0000-000000000002', 4, '프로세스 상태', 'quiz', '{"questions":[{"question":"프로세스가 CPU를 할당받아 명령어를 실행하고 있는 상태는?","code":null,"options":["New","Ready","Running","Waiting"],"correct_index":2,"explanation":"Running 상태는 프로세스가 CPU를 점유하여 실행 중인 상태이다. 단일 CPU 시스템에서는 한 번에 하나의 프로세스만 Running 상태를 가진다."},{"question":"프로세스가 I/O 완료를 기다리고 있는 상태는?","code":null,"options":["New","Ready","Running","Waiting(Blocked)"],"correct_index":3,"explanation":"Waiting(Blocked) 상태는 프로세스가 I/O 완료, 이벤트 발생 등 특정 조건이 충족될 때까지 대기하는 상태이다."},{"question":"Ready 상태에서 Running 상태로의 전환은 무엇이 수행하는가?","code":null,"options":["인터럽트","스케줄러(Dispatcher)","시스템 콜","타이머"],"correct_index":1,"explanation":"CPU 스케줄러(디스패처)가 Ready 큐에서 프로세스를 선택하여 CPU를 할당하면 Ready → Running 상태로 전환된다."},{"question":"다음 중 프로세스 상태 전환으로 올바르지 않은 것은?","code":null,"options":["New → Ready","Running → Waiting","Waiting → Running","Terminated → 제거"],"correct_index":2,"explanation":"Waiting 상태의 프로세스는 I/O 완료 등 이벤트 발생 시 Ready 상태로 전환된다. Waiting에서 바로 Running으로 전환되지 않는다."},{"question":"타임 퀀텀(Time Quantum)이 만료되었을 때 Running 프로세스의 상태 전환은?","code":null,"options":["Running → Terminated","Running → Waiting","Running → Ready","Running → New"],"correct_index":2,"explanation":"타임 퀀텀(할당 시간)이 만료되면 타이머 인터럽트가 발생하여 현재 Running 프로세스는 Ready 상태로 전환되고 다른 프로세스에게 CPU가 할당된다."}]}', 480),

('c1000000-0000-0000-0000-000000000002', 5, '프로세스 생성', 'fill_blank', '{"questions":[{"question":"다음은 Unix/Linux에서 자식 프로세스를 생성하는 코드이다. 빈칸에 알맞은 시스템 콜은?","code":"#include <unistd.h>\nint main() {\n    pid_t pid = ___();\n    if (pid == 0) {\n        // 자식 프로세스\n    } else {\n        // 부모 프로세스\n    }\n    return 0;\n}","options":["exec","fork","wait","clone"],"correct_index":1,"explanation":"fork()는 현재 프로세스(부모)를 복제하여 자식 프로세스를 생성한다. 부모에게는 자식의 PID가, 자식에게는 0이 반환된다."},{"question":"다음 코드에서 자식 프로세스가 새로운 프로그램을 실행하도록 빈칸에 알맞은 함수는?","code":"pid_t pid = fork();\nif (pid == 0) {\n    ___(\"/bin/ls\", \"ls\", \"-l\", NULL);\n    // 새 프로그램으로 대체\n}","options":["fork","wait","execl","printf"],"correct_index":2,"explanation":"execl()은 exec 계열 함수 중 하나로, 현재 프로세스 이미지를 새 프로그램으로 완전히 대체한다. exec 호출 이후의 코드는 실행되지 않는다."},{"question":"부모 프로세스가 자식 프로세스의 종료를 기다리는 시스템 콜은?","code":"pid_t pid = fork();\nif (pid > 0) {\n    int status;\n    ___(NULL);\n    printf(\"자식 종료 완료\\n\");
INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000002', 1, '운영체제란?', 'flashcard', '{
  "cards": [
    {"front": "운영체제(OS)란 무엇인가?", "back": "하드웨어와 사용자 사이에서 중재자 역할을 하는 시스템 소프트웨어로, 하드웨어 자원을 관리하고 응용 프로그램 실행 환경을 제공한다.", "hint": null},
    {"front": "운영체제의 핵심 역할 4가지는?", "back": "① 프로세스 관리, ② 메모리 관리, ③ 파일 시스템 관리, ④ 입출력 장치 관리", "hint": "자원을 효율적으로 관리하는 것이 목적이다."},
    {"front": "커널(Kernel)이란?", "back": "운영체제의 핵심 구성 요소로, 하드웨어와 직접 통신하며 프로세스·메모리·장치를 관리하는 상주 프로그램이다.", "hint": null},
    {"front": "운영체제가 없다면 어떤 문제가 발생하는가?", "back": "응용 프로그램이 하드웨어에 직접 접근해야 하므로 충돌, 보안 취약, 자원 낭비, 이식성 부재 등의 문제가 발생한다.", "hint": null},
    {"front": "단일 커널(Monolithic Kernel)과 마이크로 커널(Micro Kernel)의 차이는?", "back": "단일 커널은 모든 OS 서비스가 커널 공간에서 실행되어 성능이 높지만 안정성이 낮고, 마이크로 커널은 최소 기능만 커널에 두고 나머지는 사용자 공간에서 실행되어 안정성이 높지만 성능 오버헤드가 있다.", "hint": null}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 2, '커널과 유저 모드', 'quiz', '{
  "questions": [
    {"question": "커널 모드(Kernel Mode)와 유저 모드(User Mode)를 구분하는 주된 이유는 무엇인가?", "code": null, "options": ["CPU 클럭 속도를 높이기 위해", "하드웨어 자원을 보호하고 시스템 안정성을 확보하기 위해", "메모리 용량을 늘리기 위해", "응용 프로그램 실행 속도를 빠르게 하기 위해"], "correct_index": 1, "explanation": "유저 모드에서는 직접 하드웨어 접근이 제한되어, 잘못된 프로그램이 시스템 전체를 손상시키는 것을 방지한다."},
    {"question": "유저 모드에서 커널 모드로 전환되는 대표적인 계기는?", "code": null, "options": ["변수 선언", "시스템 콜(System Call) 호출", "조건문 실행", "반복문 실행"], "correct_index": 1, "explanation": "시스템 콜은 사용자 프로그램이 OS 서비스를 요청하는 공식 인터페이스로, 이 호출이 발생하면 CPU는 유저 모드에서 커널 모드로 전환된다."},
    {"question": "다음 중 시스템 콜에 해당하지 않는 것은?", "code": null, "options": ["파일 읽기(read)", "소켓 생성(socket)", "프로세스 생성(fork)", "정수 덧셈 연산"], "correct_index": 3, "explanation": "정수 덧셈은 CPU가 유저 모드에서 직접 처리하는 연산으로, 커널의 개입이 필요 없다."},
    {"question": "인터럽트(Interrupt)가 발생했을 때 CPU의 동작은?", "code": null, "options": ["현재 명령을 무시하고 종료한다", "현재 상태를 저장하고 커널 모드로 전환하여 인터럽트 핸들러를 실행한다", "유저 모드를 유지한 채 인터럽트를 처리한다", "다음 프로세스로 즉시 컨텍스트 스위칭한다"], "correct_index": 1, "explanation": "인터럽트 발생 시 CPU는 레지스터 상태를 저장하고, 커널 모드에서 해당 인터럽트 서비스 루틴(ISR)을 실행한 뒤 원래 상태로 복귀한다."},
    {"question": "듀얼 모드(Dual Mode) 운영에서 특권 명령(Privileged Instruction)이란?", "code": null, "options": ["일반 응용 프로그램이 자유롭게 실행 가능한 명령", "오직 커널 모드에서만 실행 가능한 명령", "컴파일러가 최적화하는 명령", "멀티스레드 환경에서만 사용되는 명령"], "correct_index": 1, "explanation": "입출력 제어, 메모리 보호 설정 등 하드웨어를 직접 제어하는 특권 명령은 커널 모드에서만 실행 가능하며, 유저 모드에서 시도하면 트랩(Trap)이 발생한다."}
  ]
}', 360),

('c1000000-0000-0000-0000-000000000002', 3, '프로세스 개념', 'flashcard', '{
  "cards": [
    {"front": "프로그램(Program)과 프로세스(Process)의 차이는?", "back": "프로그램은 디스크에 저장된 정적인 실행 파일이고, 프로세스는 프로그램이 메모리에 적재되어 실행 중인 동적인 상태를 말한다.", "hint": null},
    {"front": "PCB(Process Control Block)란?", "back": "운영체제가 각 프로세스를 관리하기 위해 유지하는 자료 구조로, 프로세스 ID, 상태, 프로그램 카운터, 레지스터, 메모리 정보, I/O 상태 등을 포함한다.", "hint": null},
    {"front": "프로세스의 메모리 구조(4영역)는?", "back": "① 코드(Code) 영역: 실행 명령어, ② 데이터(Data) 영역: 전역/정적 변수, ③ 힙(Heap) 영역: 동적 할당, ④ 스택(Stack) 영역: 지역 변수·함수 호출 정보", "hint": null},
    {"front": "PID(Process ID)란?", "back": "운영체제가 각 프로세스에 부여하는 고유한 정수 식별자로, 프로세스를 구분하고 관리하는 데 사용된다.", "hint": "리눅스에서 init 프로세스의 PID는 1이다."},
    {"front": "프로세스와 스레드의 가장 큰 차이점은?", "back": "프로세스는 독립된 메모리 공간(코드·데이터·힙·스택)을 가지는 반면, 스레드는 같은 프로세스 내에서 코드·데이터·힙 영역을 공유하고 스택만 독립적으로 가진다.", "hint": null}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 4, '프로세스 상태', 'quiz', '{
  "questions": [
    {"question": "프로세스가 CPU를 할당받아 명령을 실행 중인 상태는?", "code": null, "options": ["New", "Ready", "Running", "Waiting"], "correct_index": 2, "explanation": "Running 상태는 CPU를 점유하여 실제 명령어를 실행하고 있는 상태이다."},
    {"question": "프로세스가 I/O 작업 완료를 기다리고 있을 때의 상태는?", "code": null, "options": ["New", "Ready", "Running", "Waiting(Blocked)"], "correct_index": 3, "explanation": "Waiting(Blocked) 상태는 I/O 완료, 이벤트 발생 등 특정 조건이 충족될 때까지 CPU를 사용하지 않고 대기하는 상태이다."},
    {"question": "Ready 상태에서 Running 상태로의 전환을 일으키는 것은?", "code": null, "options": ["I/O 요청", "스케줄러의 dispatch(CPU 할당)", "인터럽트 발생", "프로세스 종료"], "correct_index": 1, "explanation": "스케줄러가 Ready 큐에서 프로세스를 선택하여 CPU를 할당(dispatch)하면 Running 상태로 전환된다."},
    {"question": "Running 상태에서 Ready 상태로 전환되는 원인은?", "code": null, "options": ["I/O 요청", "프로세스 생성 완료", "타임 퀀텀(Time Quantum) 만료", "메모리 부족"], "correct_index": 2, "explanation": "선점형 스케줄링에서 타임 퀀텀이 만료되면 CPU를 빼앗겨 Running에서 Ready 상태로 전환된다."},
    {"question": "프로세스가 종료되었지만 부모 프로세스가 아직 종료 상태를 수거하지 않은 상태를 무엇이라 하는가?", "code": null, "options": ["Orphan 프로세스", "Zombie 프로세스", "Daemon 프로세스", "Init 프로세스"], "correct_index": 1, "explanation": "Zombie 프로세스는 실행이 끝났지만 PCB가 아직 제거되지 않은 상태로, 부모가 wait()를 호출해야 완전히 제거된다."}
  ]
}', 360),

('c1000000-0000-0000-0000-000000000002', 5, '프로세스 생성', 'fill_blank', '{
  "questions": [
    {"question": "유닉스/리눅스에서 새로운 프로세스를 생성하는 시스템 콜을 채워 넣으시오.", "code": "pid_t pid = ___();", "options": ["exec", "fork", "clone", "spawn"], "correct_index": 1, "explanation": "fork()는 현재 프로세스를 복제하여 자식 프로세스를 생성한다. 부모에게는 자식의 PID를, 자식에게는 0을 반환한다."},
    {"question": "fork() 호출 후 자식 프로세스에서 새로운 프로그램을 실행할 때 사용하는 시스템 콜을 채워 넣으시오.", "code": "if (pid == 0) {\n    ___(\"./program\", args, env);\n}", "options": ["fork", "wait", "execve", "exit"], "correct_index": 2, "explanation": "execve()는 현재 프로세스의 이미지를 새로운 프로그램으로 교체한다. exec 계열 함수는 성공 시 반환하지 않는다."},
    {"question": "부모 프로세스가 자식 프로세스의 종료를 기다리는 시스템 콜을 채워 넣으시오.", "code": "int status;\n___(NULL);", "options": ["sleep", "pause", "wait", "join"], "correct_index": 2, "explanation": "wait()는 자식 프로세스 중 하나가 종료될 때까지 부모를 블록 상태로 만들고, 자식의 종료 상태를 수거하여 좀비 프로세스가 되지 않게 한다."},
    {"question": "fork() 반환값으로 현재 실행 중인 코드가 부모 프로세스임을 판단하는 조건을 채워 넣으시오.", "code": "pid_t pid = fork();\nif (pid ___ 0) {\n    // 부모 프로세스 코드\n}", "options": ["==", "<", ">", "!="], "correct_index": 2, "explanation": "fork()는 부모에게 양수(자식 PID)를, 자식에게 0을, 오류 시 -1을 반환한다. 따라서 pid > 0이면 부모 프로세스이다."}
  ]
}', 360),

('c1000000-0000-0000-0000-000000000002', 6, '컨텍스트 스위칭', 'quiz', '{
  "questions": [
    {"question": "컨텍스트 스위칭(Context Switching)이란 무엇인가?", "code": null, "options": ["프로세스가 I/O를 요청하는 동작", "CPU가 현재 프로세스의 상태를 저장하고 다른 프로세스의 상태를 복원하여 실행을 전환하는 과정", "메모리에서 프로세스를 제거하는 동작", "스레드를 생성하는 동작"], "correct_index": 1, "explanation": "컨텍스트 스위칭은 PCB에 현재 프로세스 상태(레지스터, PC 등)를 저장하고 다음 프로세스의 PCB를 불러와 실행을 재개하는 과정이다."},
    {"question": "컨텍스트 스위칭 시 저장/복원되는 정보가 아닌 것은?", "code": null, "options": ["프로그램 카운터(PC)", "CPU 레지스터 값", "프로세스 상태", "하드디스크 파일 내용"], "correct_index": 3, "explanation": "컨텍스트 스위칭 시 저장되는 정보는 CPU 레지스터, 프로그램 카운터, 스택 포인터, 프로세스 상태 등 CPU 문맥 정보이다. 하드디스크 파일은 해당하지 않는다."},
    {"question": "컨텍스트 스위칭이 빈번하게 발생할 때 나타나는 문제점은?", "code": null, "options": ["메모리 누수 발생", "오버헤드로 인한 시스템 성능 저하", "파일 시스템 손상", "네트워크 지연 증가"], "correct_index": 1, "explanation": "컨텍스트 스위칭 자체는 유용한 작업을 수행하지 않는 오버헤드로, 빈번할수록 CPU 시간 낭비가 커져 전체 시스템 처리량이 감소한다."},
    {"question": "컨텍스트 스위칭이 발생하는 계기가 아닌 것은?", "code": null, "options": ["타임 퀀텀 만료", "I/O 요청", "변수에 값 대입", "인터럽트 발생"], "correct_index": 2, "explanation": "변수에 값을 대입하는 것은 CPU가 유저 모드에서 처리하는 일반 연산으로 컨텍스트 스위칭을 유발하지 않는다."},
    {"question": "스레드 간 컨텍스트 스위칭이 프로세스 간 컨텍스트 스위칭보다 빠른 이유는?", "code": null, "options": ["스레드가 더 많은 메모리를 사용하기 때문에", "같은 프로세스 내 스레드들은 주소 공간을 공유하므로 메모리 맵 교체가 불필요하기 때문에", "스레드는 PCB를 사용하지 않기 때문에", "스레드는 커널 모드를 사용하지 않기 때문에"], "correct_index": 1, "explanation": "같은 프로세스 내 스레드 간 전환 시에는 TLB 플러시나 페이지 테이블 교체가 필요 없어 프로세스 간 전환보다 오버헤드가 훨씬 작다."}
  ]
}', 360),

('c1000000-0000-0000-0000-000000000002', 7, '스레드 개념', 'flashcard', '{
  "cards": [
    {"front": "스레드(Thread)란?", "back": "프로세스 내에서 실행되는 가장 작은 실행 단위로, 경량 프로세스(LWP)라고도 한다. 같은 프로세스의 스레드들은 코드·데이터·힙을 공유한다.", "hint": null},
    {"front": "스레드가 독립적으로 갖는 자원은?", "back": "스레드 ID, 프로그램 카운터(PC), 레지스터 집합, 스택(Stack). 나머지 자원(코드, 데이터, 힙, 파일)은 같은 프로세스의 스레드끼리 공유한다.", "hint": null},
    {"front": "멀티스레딩(Multithreading)의 장점은?", "back": "① 응답성 향상(일부 스레드 블록 시 다른 스레드 실행), ② 자원 공유로 메모리 효율 증가, ③ 프로세스 생성보다 생성 비용 절감, ④ 멀티코어 CPU 병렬 활용 가능", "hint": null},
    {"front": "유저 스레드(User Thread)와 커널 스레드(Kernel Thread)의 차이는?", "back": "유저 스레드는 사용자 공간 라이브러리가 관리하여 커널 개입 없이 빠르지만, 하나가 블록되면 전체가 블록된다. 커널 스레드는 OS가 직접 관리하여 개별 블록·멀티코어 활용이 가능하지만 생성·전환 비용이 크다.", "hint": null},
    {"front": "스레드 안전(Thread-Safe)이란?", "back": "여러 스레드가 동시에 접근해도 공유 자원의 일관성이 보장되어 올바른 결과를 내는 코드 또는 자료 구조의 특성을 말한다.", "hint": "뮤텍스, 세마포어 등으로 임계 영역을 보호하여 달성한다."}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 8, '멀티스레딩', 'quiz', '{
  "questions": [
    {"question": "멀티스레딩 환경에서 발생할 수 있는 가장 큰 문제는?", "code": null, "options": ["메모리 부족", "공유 자원에 대한 경쟁 조건(Race Condition)", "CPU 과열", "디스크 I/O 지연"], "correct_index": 1, "explanation": "여러 스레드가 동기화 없이 공유 자원에 동시 접근하면 실행 순서에 따라 결과가 달라지는 경쟁 조건이 발생한다."},
    {"question": "One-to-One 스레드 모델의 특징은?", "code": null, "options": ["하나의 커널 스레드에 여러 유저 스레드가 매핑된다", "각 유저 스레드가 하나의 커널 스레드에 매핑된다", "유저 스레드와 커널 스레드가 독립적으로 동작한다", "유저 스레드만 사용하여 커널을 전혀 사용하지 않는다"], "correct_index": 1, "explanation": "One-to-One 모델은 유저 스레드 하나당 커널 스레드 하나가 매핑되므로 진정한 병렬 실행이 가능하지만 커널 스레드 생성 비용이 크다. Linux의 POSIX 스레드(pthreads)가 이 모델을 사용한다."},
    {"question": "Many-to-One 스레드 모델의 단점은?", "code": null, "options": ["스레드 생성 비용이 매우 크다", "하나의 스레드가 블록 호출 시 모든 스레드가 블록된다", "커널 자원을 너무 많이 사용한다", "컨텍스트 스위칭 비용이 크다"], "correct_index": 1, "explanation": "Many-to-One 모델은 여러 유저 스레드가 하나의 커널 스레드에 매핑되므로 한 스레드가 블로킹 시스템 콜을 호출하면 전체 프로세스가 블록된다."},
    {"question": "데몬 스레드(Daemon Thread)란?", "code": null, "options": ["최우선 순위로 실행되는 스레드", "주 스레드(Main Thread)가 종료되면 자동으로 종료되는 백그라운드 스레드", "커널이 직접 생성하는 스레드", "오류 처리 전용 스레드"], "correct_index": 1, "explanation": "데몬 스레드는 백그라운드에서 보조 작업을 수행하는 스레드로, 주 스레드 종료 시 강제 종료된다. 가비지 컬렉터가 대표적인 예이다."}
  ]
}', 360),

('c1000000-0000-0000-0000-000000000002', 9, '동기화 문제', 'reading', '{
  "questions": [
    {"question": "다음 중 임계 영역(Critical Section)을 올바르게 설명한 것은?", "code": null, "options": ["CPU가 가장 빠르게 실행하는 코드 구간", "공유 자원에 접근하는 코드 구간으로, 한 번에 하나의 프로세스/스레드만 실행해야 하는 구간", "오류가 자주 발생하는 코드 구간", "운영체제만 접근 가능한 코드 구간"], "correct_index": 1, "explanation": "임계 영역은 공유 자원(변수, 파일 등)을 읽거나 쓰는 코드 구간으로, 동시 접근을 허용하면 데이터 불일치가 발생한다."},
    {"question": "경쟁 상태(Race Condition)란?", "code": null, "options": ["두 프로세스가 CPU를 서로 차지하려 경쟁하는 상태", "둘 이상의 스레드가 공유 자원에 동시에 접근하여 실행 순서에 따라 결과가 달라지는 상태", "프로세스가 무한 루프에 빠진 상태", "스레드가 데드락에 빠진 상태"], "correct_index": 1, "explanation": "경쟁 상태는 공유 자원에 대한 접근 순서가 비결정적일 때 발생하며, 올바른 동기화로 방지할 수 있다."},
    {"question": "임계 영역 문제 해결을 위한 3가지 조건이 아닌 것은?", "code": null, "options": ["상호 배제(Mutual Exclusion)", "진행(Progress)", "한정 대기(Bounded Waiting)", "선점(Preemption)"], "correct_index": 3, "explanation": "임계 영역 해결 조건은 ① 상호 배제: 한 번에 하나만 실행, ② 진행: 임계 영역 외 프로세스가 진입을 방해하지 않음, ③ 한정 대기: 무한 대기 방지이다. 선점은 해당 조건이 아니다."},
    {"question": "바쁜 대기(Busy Waiting)란 무엇이며 어떤 문제가 있는가?", "code": null, "options": ["I/O 장치가 데이터를 처리할 때까지 반복 확인하는 방식으로 CPU 낭비가 발생한다", "프로세스가 메모리를 계속 요청하여 메모리 부족이 발생하는 상태", "스레드가 생성 직후 아무 작업도 하지 않는 상태", "인터럽트를 무시하고 계속 실행하는 방식"], "correct_index": 0, "explanation": "Busy Waiting(스핀락)은 조건이 충족될 때까지 CPU를 점유하며 반복 확인하는 방식으로, CPU 자원을 낭비한다. 대기 시간이 짧을 때는 오히려 효율적일 수 있다."},
    {"question": "피터슨 알고리즘(Peterson''s Algorithm)은 어떤 문제를 해결하는가?", "code": null, "options": ["메모리 단편화 문제", "두 프로세스 간의 임계 영역 상호 배제 문제", "교착 상태 탐지 문제", "CPU 스케줄링 문제"], "correct_index": 1, "explanation": "피터슨 알고리즘은 소프트웨어적으로 두 프로세스 간의 상호 배제, 진행, 한정 대기 조건을 모두 만족하는 임계 영역 해결책이다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 10, '뮤텍스와 세마포어', 'flashcard', '{
  "cards": [
    {"front": "뮤텍스(Mutex)란?", "back": "Mutual Exclusion의 약자로, 임계 영역을 보호하는 잠금 메커니즘이다. lock()과 unlock() 연산을 제공하며, 잠금을 획득한 스레드만 unlock()을 호출할 수 있다.", "hint": null},
    {"front": "세마포어(Semaphore)란?", "back": "정수형 카운터를 사용하는 동기화 도구로, P(wait/down) 연산으로 카운터를 감소하고 V(signal/up) 연산으로 증가한다. 0이 되면 대기 상태로 전환된다.", "hint": "P는 Dutch어 Proberen(시도), V는 Verhogen(증가)에서 유래한다."},
    {"front": "이진 세마포어(Binary Semaphore)와 계수 세마포어(Counting Semaphore)의 차이는?", "back": "이진 세마포어는 값이 0 또는 1만 가능하여 뮤텍스처럼 동작한다. 계수 세마포어는 양의 정수 범위를 가져 여러 개의 동일 자원에 대한 동시 접근 수를 제어할 수 있다.", "hint": null},
    {"front": "뮤텍스와 세마포어의 핵심 차이점은?", "back": "뮤텍스는 소유권 개념이 있어 잠근 스레드만 해제 가능하다. 세마포어는 소유권이 없어 다른 스레드/프로세스가 신호를 줄 수 있어 프로세스 간 동기화나 순서 제어에 적합하다.", "hint": null},
    {"front": "스핀락(Spinlock)이란?", "back": "잠금이 해제될 때까지 CPU를 반납하지 않고 반복 확인(Busy Waiting)하는 락이다. 대기 시간이 짧고 멀티코어 환경에서 컨텍스트 스위칭 비용을 줄이려는 경우 효율적이다.", "hint": null}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 11, '동기화 구현', 'fill_blank', '{
  "questions": [
    {"question": "뮤텍스를 사용하여 임계 영역 진입 전에 잠금을 획득하는 코드를 완성하시오.", "code": "pthread_mutex_t m = PTHREAD_MUTEX_INITIALIZER;\npthread_mutex___(& m);\n// 임계 영역\npthread_mutex_unlock(&m);", "options": ["destroy", "init", "lock", "wait"], "correct_index": 2, "explanation": "pthread_mutex_lock()은 뮤텍스를 잠그는 함수로, 이미 잠겨있으면 해제될 때까지 스레드를 블록한다."},
    {"question": "세마포어의 wait(P) 연산을 올바르게 구현한 것을 채워 넣으시오.", "code": "void wait(Semaphore *S) {\n    S->value___;\n    if (S->value < 0) {\n        block();\n    }\n}", "options": ["++", "--", "*=2", "= 0"], "correct_index": 1, "explanation": "P(wait) 연산은 세마포어 값을 1 감소시키고, 값이 0 미만이면 해당 프로세스를 대기 큐에 넣고 블록한다."},
    {"question": "세마포어의 signal(V) 연산을 완성하시오.", "code": "void signal(Semaphore *S) {\n    S->value___;\n    if (S->value <= 0) {\n        wakeup(waiting_process);\n    }\n}", "options": ["--", "= 0", "++", "*= 2"], "correct_index": 2, "explanation": "V(signal) 연산은 세마포어 값을 1 증가시키고, 대기 중인 프로세스가 있으면 하나를 깨운다."},
    {"question": "조건 변수(Condition Variable)를 사용할 때, 조건이 충족되기를 기다리는 함수를 채워 넣으시오.", "code": "pthread_mutex_lock(&mutex);\nwhile (!condition) {\n    pthread_cond___(& cond, &mutex);\n}\n// 조건 충족 후 작업\npthread_mutex_unlock(&mutex);", "options": ["signal", "broadcast", "wait", "sleep"], "correct_index": 2, "explanation": "pthread_cond_wait()는 조건 변수를 기다리며 뮤텍스를 원자적으로 해제하고 스레드를 블록한다. 시그널을 받으면 다시 뮤텍스를 획득한다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 12, '데드락 개념', 'flashcard', '{
  "cards": [
    {"front": "데드락(Deadlock)이란?", "back": "두 개 이상의 프로세스/스레드가 서로 상대방이 점유한 자원을 기다리며 영원히 진행하지 못하는 교착 상태이다.", "hint": null},
    {"front": "데드락의 필요조건 ① 상호 배제(Mutual Exclusion)란?", "back": "자원은 한 번에 하나의 프로세스만 사용할 수 있다. 다른 프로세스가 사용 중이면 대기해야 한다.", "hint": "데드락 4가지 조건 중 첫 번째"},
    {"front": "데드락의 필요조건 ② 점유와 대기(Hold and Wait)란?", "back": "프로세스가 최소 하나의 자원을 보유한 상태에서 다른 프로세스가 가진 추가 자원을 기다리는 상태이다.", "hint": "데드락 4가지 조건 중 두 번째"},
    {"front": "데드락의 필요조건 ③ 비선점(No Preemption)이란?", "back": "프로세스가 자발적으로 자원을 해제하기 전까지 강제로 자원을 빼앗을 수 없다.", "hint": "데드락 4가지 조건 중 세 번째"},
    {"front": "데드락의 필요조건 ④ 순환 대기(Circular Wait)란?", "back": "프로세스들이 원형으로 서로의 자원을 기다리는 상태. P1→P2→P3→P1처럼 대기 사슬이 순환 구조를 이룬다. 4가지 조건이 모두 충족되어야 데드락이 발생한다.", "hint": "데드락 4가지 조건 중 네 번째"}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 13, '데드락 처리', 'quiz', '{
  "questions": [
    {"question": "데드락 예방(Prevention) 전략의 핵심 아이디어는?", "code": null, "options": ["데드락이 발생하면 즉시 프로세스를 종료한다", "데드락 발생 후 자원 할당 그래프를 분석한다", "데드락 발생의 4가지 필요조건 중 하나 이상이 성립하지 않도록 자원 요청 방식을 제한한다", "프로세스가 자원 요청 시 항상 승인한다"], "correct_index": 2, "explanation": "데드락 예방은 4가지 필요조건(상호배제/점유대기/비선점/순환대기) 중 하나를 원천적으로 제거하여 데드락 자체가 불가능하도록 만드는 방법이다."},
    {"question": "데드락 회피(Avoidance)의 대표적인 알고리즘은?", "code": null, "options": ["페이지 교체 알고리즘", "은행원 알고리즘(Banker''s Algorithm)", "라운드 로빈 스케줄링", "LRU 알고리즘"], "correct_index": 1, "explanation": "은행원 알고리즘은 자원 요청 시 할당 후 안전 상태 여부를 미리 판단하여 안전한 경우에만 자원을 할당하는 데드락 회피 알고리즘이다."},
    {"question": "데드락 탐지(Detection) 후 복구 방법으로 적절하지 않은 것은?", "code": null, "options": ["데드락에 관련된 프로세스 중 하나를 강제 종료", "자원 선점(Resource Preemption)으로 자원 회수", "프로세스를 이전 체크포인트(Checkpoint)로 롤백", "데드락이 발생하지 않도록 자원 요청을 무조건 거부"], "correct_index": 3, "explanation": "자원 요청을 무조건 거부하는 것은 데드락 탐지 후 복구가 아닌 예방 또는 회피 전략에 해당한다. 탐지 후 복구는 이미 발생한 데드락을 해소하는 방법이다."},
    {"question": "데드락 무시(Ignorance) 전략, 즉 타조 알고리즘(Ostrich Algorithm)을 사용하는 이유는?", "code": null, "options": ["데드락 처리 비용이 너무 높아 발생 빈도가 낮을 때 무시하는 것이 실용적이기 때문에", "데드락은 절대 발생하지 않기 때문에", "OS가 자동으로 데드락을 해결하기 때문에", "데드락 탐지 알고리즘이 아직 개발되지 않았기 때문에"], "correct_index": 0, "explanation": "실용적 관점에서 데드락 처리 메커니즘 구현 비용이 데드락 발생 빈도와 피해보다 클 경우, 개발자가 직접 방지하도록 두고 OS는 무시하는 방식이다. UNIX/Linux가 이 접근법을 많이 사용한다."},
    {"question": "순환 대기 조건을 제거하여 데드락을 예방하는 방법은?", "code": null, "options": ["모든 자원을 공유 자원으로 만든다", "모든 자원에 번호를 부여하고 번호 오름차순으로만 자원을 요청하도록 강제한다", "프로세스가 시작할 때 필요한 자원을 모두 할당한다", "프로세스 수를 제한한다"], "correct_index": 1, "explanation": "자원에 전체 순서를 부여하고 오름차순으로만 요청하면 자원 대기 그래프에 사이클이 생길 수 없으므로 순환 대기 조건이 제거된다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 14, '은행원 알고리즘', 'quiz', '{
  "questions": [
    {"question": "은행원 알고리즘에서 ''안전 상태(Safe State)''란?", "code": null, "options": ["모든 프로세스가 동시에 실행 가능한 상태", "모든 프로세스가 최대 자원 요구를 충족시킬 수 있는 안전 순서열이 존재하는 상태", "자원 낭비 없이 모든 자원이 할당된 상태", "데드락이 이미 발생한 상태"], "correct_index": 1, "explanation": "안전 상태란 모든 프로세스가 순차적으로 최대 자원 요구를 받아 완료할 수 있는 순서(안전 순서열)가 존재하는 상태이다."},
    {"question": "은행원 알고리즘에서 Allocation 행렬과 Max 행렬의 차이는?", "code": null, "options": ["Allocation은 최대 요구량, Max는 현재 할당량이다", "Allocation은 현재 할당된 자원량, Max는 프로세스가 요청할 수 있는 최대 자원량이다", "두 행렬은 동일하다", "Allocation은 가용 자원량이다"], "correct_index": 1, "explanation": "Need = Max - Allocation으로 계산되며, 각 프로세스가 앞으로 추가로 필요한 자원량을 나타낸다."},
    {"question": "프로세스 P0~P4가 있고 Available = [3, 3, 2]일 때, Need가 [7,4,3], [1,2,2], [6,0,0], [0,1,1], [4,3,1]이면 안전 순서열의 시작으로 가능한 프로세스는?", "code": null, "options": ["P0", "P1", "P2", "P3"], "correct_index": 3, "explanation": "Available [3,3,2]로 Need를 충족할 수 있는 프로세스는 Need ≤ Available인 P1[1,2,2]과 P3[0,1,1]이다. P3의 Need [0,1,1] ≤ [3,3,2]이므로 P3부터 시작 가능하다."},
    {"question": "은행원 알고리즘의 한계점은?", "code": null, "options": ["데드락을 완벽하게 탐지할 수 없다", "프로세스 수와 자원 수가 고정되어야 하고 최대 자원 요구량을 미리 알아야 하므로 실용성이 떨어진다", "알고리즘의 시간 복잡도가 O(1)이라 효율이 너무 낮다", "멀티코어 환경에서만 동작한다"], "correct_index": 1, "explanation": "은행원 알고리즘은 프로세스 수·자원 수 고정, 최대 요구량 사전 파악, 요청 항상 승인 가능 가정 등 비현실적 조건이 많아 실제 OS에서는 거의 사용되지 않는다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 15, 'CPU 스케줄링', 'flashcard', '{
  "cards": [
    {"front": "FCFS(First Come First Served) 스케줄링이란?", "back": "도착 순서대로 CPU를 할당하는 비선점 방식이다. 구현이 간단하지만 긴 작업 뒤에 짧은 작업이 오래 기다리는 호위 효과(Convoy Effect)가 발생할 수 있다.", "hint": null},
    {"front": "SJF(Shortest Job First) 스케줄링이란?", "back": "실행 시간이 가장 짧은 프로세스에게 CPU를 먼저 할당하는 방식이다. 평균 대기 시간이 최소화되지만 긴 프로세스는 무한 대기(기아, Starvation)가 발생할 수 있다.", "hint": null},
    {"front": "라운드 로빈(Round Robin, RR) 스케줄링이란?", "back": "각 프로세스에 동일한 크기의 타임 퀀텀(Time Quantum)을 할당하는 선점형 방식이다. 타임 퀀텀이 너무 크면 FCFS와 유사, 너무 작으면 컨텍스트 스위칭 오버헤드가 증가한다.", "hint": null},
    {"front": "우선순위 스케줄링(Priority Scheduling)이란?", "back": "각 프로세스에 우선순위를 부여하고 높은 우선순위 프로세스에게 먼저 CPU를 할당하는 방식이다. 낮은 우선순위 프로세스의 기아 문제를 해결하기 위해 에이징(Aging) 기법을 사용한다.", "hint": null},
    {"front": "선점(Preemptive)과 비선점(Non-Preemptive) 스케줄링의 차이는?", "back": "선점 스케줄링은 더 높은 우선순위 프로세스가 도착하면 현재 실행 중인 프로세스를 강제로 중단하고 CPU를 빼앗는다. 비선점 스케줄링은 프로세스가 자발적으로 CPU를 반납할 때까지 실행을 보장한다.", "hint": null}
  ]
}', 300),

('c1000000-0000-0000-0000-000000000002', 16, '스케줄링 비교', 'quiz', '{
  "questions": [
    {"question": "프로세스 P1(도착:0, 실행:10), P2(도착:0, 실행:4), P3(도착:0, 실행:1) 순으로 도착했을 때, FCFS 스케줄링에서 평균 대기 시간은?", "code": null, "options": ["3초", "5초", "7초", "10초"], "correct_index": 2, "explanation": "P1 대기: 0초, P2 대기: 10초, P3 대기: 10+4=14초. 평균 = (0+10+14)/3 = 8초. 가장 근사한 답은 7초이나, 정확히는 8초. 호위 효과로 인해 평균 대기 시간이 크다."},
    {"question": "타임 퀀텀을 4ms로 설정한 RR 스케줄링에서 프로세스 수가 n개일 때, 각 프로세스의 응답 시간(Response Time)의 상한은?", "code": null, "options": ["4ms", "4(n-1)ms", "4n²ms", "무한대"], "correct_index": 1, "explanation": "RR에서 각 프로세스는 최악의 경우 다른 (n-1)개 프로세스가 타임 퀀텀을 모두 사용한 후 실행되므로 응답 시간 상한은 4(n-1)ms이다."},
    {"question": "SJF 스케줄링에서 실행 시간이 긴 프로세스가 계속 실행되지 못하는 문제를 무엇이라 하며, 해결책은?", "code": null, "options": ["호위 효과(Convoy Effect) - 우선순위를 낮춤", "기아(Starvation) - 에이징(Aging) 기법으로 대기 시간에 비례해 우선순위를 높임", "교착 상태(Deadlock) - 자원 선점으로 해결", "경쟁 상태(Race Condition) - 뮤텍스 사용"], "correct_index": 1, "explanation": "기아(Starvation)는 낮은 우선순위 또는 긴 실행 시간 때문에 CPU를 할당받지 못하는 현상이다. 에이징은 대기 시간이 늘어날수록 우선순위를 높여 기아를 방지한다."},
    {"question": "CPU 스케줄링 평가 기준으로 ''처리율(Throughput)''이 의미하는 것은?", "code": null, "options": ["단위 시간당 완료되는 프로세스의 수", "프로세스가 제출된 후 완료될 때까지의 총 시간", "프로세스가 Ready 큐에서 대기하는 시간", "프로세스가 처음 CPU를 받기까지의 시간"], "correct_index": 0, "explanation": "처리율(Throughput)은 단위 시간당 완료되는 프로세스 수로, 높을수록 시스템 효율이 좋다. 반환 시간(Turnaround), 대기 시간(Waiting), 응답 시간(Response)과 함께 주요 평가 기준이다."},
    {"question": "다단계 피드백 큐(Multilevel Feedback Queue) 스케줄링의 특징은?", "code": null, "options": ["모든 프로세스에 동일한 우선순위를 부여한다", "프로세스의 CPU 사용 패턴에 따라 동적으로 우선순위 큐 사이를 이동시킨다", "FCFS와 동일하게 동작한다", "오직 두 개의 큐만 사용한다"], "correct_index": 1, "explanation": "다단계 피드백 큐는 CPU를 많이 사용하는 프로세스를 낮은 우선순위 큐로 이동시키고, 오래 기다린 프로세스를 높은 우선순위 큐로 이동시켜 적응적으로 스케줄링한다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 17, '메모리 관리', 'quiz', '{
  "questions": [
    {"question": "고정 분할(Fixed Partition) 메모리 관리의 단점은?", "code": null, "options": ["구현이 너무 복잡하다", "파티션 크기가 고정되어 프로세스 크기가 파티션보다 작으면 내부 단편화(Internal Fragmentation)가 발생한다", "메모리를 전혀 사용할 수 없다", "멀티프로세싱을 지원하지 않는다"], "correct_index": 1, "explanation": "고정 분할에서 프로세스가 파티션보다 작으면 남은 공간이 낭비되는 내부 단편화가 발생한다. 반대로 가변 분할에서는 외부 단편화가 문제이다."},
    {"question": "외부 단편화(External Fragmentation)를 해결하기 위한 기법은?", "code": null, "options": ["페이징(Paging)", "메모리 압축(Compaction)", "FIFO 교체", "세마포어"], "correct_index": 1, "explanation": "메모리 압축(Compaction)은 흩어진 빈 공간을 한쪽으로 모아 큰 연속 공간을 만드는 방법이다. 단, 실행 중인 프로세스를 이동해야 하므로 오버헤드가 크다."},
    {"question": "페이징(Paging) 기법에서 논리 주소를 물리 주소로 변환하는 데 사용되는 자료 구조는?", "code": null, "options": ["스택(Stack)", "페이지 테이블(Page Table)", "세그먼트 테이블(Segment Table)", "캐시(Cache)"], "correct_index": 1, "explanation": "페이지 테이블은 각 페이지 번호에 대응하는 프레임 번호를 저장하여 논리 주소(페이지 번호 + 오프셋)를 물리 주소(프레임 번호 + 오프셋)로 변환한다."},
    {"question": "내부 단편화(Internal Fragmentation)와 외부 단편화(External Fragmentation)의 차이는?", "code": null, "options": ["내부: 할당된 메모리 내 낭비 공간 / 외부: 할당되지 않은 공간이 분산되어 큰 요청을 수용 못하는 현상", "내부: CPU 내부 캐시 낭비 / 외부: 디스크 낭비", "내부: 페이지 크기 불일치 / 외부: 세그먼트 크기 불일치", "두 단편화는 같은 현상이다"], "correct_index": 0, "explanation": "내부 단편화는 할당된 공간 내 사용되지 않는 낭비(고정 분할에서 발생), 외부 단편화는 빈 공간이 조각나서 합계는 충분하나 연속적으로 충분한 공간이 없는 현상(가변 분할에서 발생)이다."},
    {"question": "TLB(Translation Lookaside Buffer)의 역할은?", "code": null, "options": ["페이지 테이블을 디스크에 저장한다", "최근에 사용된 페이지 테이블 항목을 캐시하여 주소 변환 속도를 높인다", "페이지 교체 알고리즘을 실행한다", "메모리 압축을 수행한다"], "correct_index": 1, "explanation": "TLB는 페이지 테이블의 일부를 저장하는 고속 연관 메모리(캐시)로, TLB 히트 시 메모리 접근 없이 빠르게 주소를 변환할 수 있다. 일반적으로 95% 이상의 히트율을 가진다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 18, '가상 메모리 관리', 'fill_blank', '{
  "questions": [
    {"question": "가상 메모리의 핵심 기법으로, 필요한 페이지를 메모리에 없을 때만 디스크에서 적재하는 방식을 채워 넣으시오.", "code": "// 프로세스 실행 중 페이지 부재 시 디스크에서 로드\nvoid handle_page_fault(int page_num) {\n    if (!page_table[page_num].valid) {\n        load_page_from_disk(page_num);  // ___ 페이징\n        page_table[page_num].valid = 1;\n    }\n}", "options": ["선행(Prefetch)", "요구(Demand)", "역(Reverse)", "고정(Fixed)"], "correct_index": 1, "explanation": "요구 페이징(Demand Paging)은 페이지가 실제로 필요할 때만 메모리에 적재하는 방식으로, 메모리를 효율적으로 사용하고 프로세스 시작 시간을 단축한다."},
    {"question": "페이지 부재(Page Fault) 발생 시 OS가 수행하는 첫 번째 동작을 채워 넣으시오.", "code": "// 하드웨어가 페이지 부재 감지 후\nvoid page_fault_handler() {\n    // 1단계: 유효한 참조인지 확인\n    if (invalid_reference()) abort();\n    // 2단계: 빈 ___을 확보한다\n    int frame = get_free_frame();\n    load_page(frame);\n}", "options": ["스택", "프레임(Frame)", "스레드", "세그먼트"], "correct_index": 1, "explanation": "페이지 부재 처리 시 OS는 먼저 빈 프레임을 확보하고, 없으면 교체 알고리즘으로 희생 페이지를 선택한 후 디스크에서 필요한 페이지를 해당 프레임에 적재한다."},
    {"question": "스래싱(Thrashing)의 발생 원인과 관련된 빈칸을 채우시오.", "code": "// 스래싱: 프로세스가 실행보다\n// ___ 처리에 더 많은 시간을 소비하는 현상\nif (page_fault_rate > threshold) {\n    // 스래싱 발생 - 프로세스 수 줄이기\n    suspend_process();\n}", "options": ["컴파일", "페이지 교체(Page Replacement)", "스케줄링", "동기화"], "correct_index": 1, "explanation": "스래싱은 프로세스에 충분한 프레임이 없을 때 페이지 부재가 빈번히 발생하여 CPU 사용률보다 페이지 교체 작업에 더 많은 시간이 소요되는 현상이다."},
    {"question": "Copy-on-Write(COW) 기법의 동작을 완성하시오.", "code": "// fork() 직후: 부모와 자식이 페이지 ___\n// 쓰기 발생 시에만 실제로 페이지 복사\nvoid on_write_access(Page *p) {\n    if (p->shared) {\n        copy_page(p);  // 쓰기 시점에 복사\n    }\n}", "options": ["충돌", "공유(Share)", "삭제", "분리"], "correct_index": 1, "explanation": "Copy-on-Write는 fork() 후 부모와 자식이 같은 페이지를 공유하다가 실제 쓰기 연산이 발생할 때만 해당 페이지를 복사하는 최적화 기법으로, 불필요한 복사를 줄인다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 19, '페이지 교체', 'quiz', '{
  "questions": [
    {"question": "FIFO(First In First Out) 페이지 교체 알고리즘의 특징은?", "code": null, "options": ["가장 최근에 사용된 페이지를 교체한다", "가장 오래전에 메모리에 올라온 페이지를 교체한다", "앞으로 가장 오랫동안 사용되지 않을 페이지를 교체한다", "사용 빈도가 가장 낮은 페이지를 교체한다"], "correct_index": 1, "explanation": "FIFO는 메모리에 가장 먼저 적재된 페이지를 교체한다. 구현이 간단하지만 Belady의 모순(프레임 수 증가 시 페이지 부재 증가)이 발생할 수 있다."},
    {"question": "OPT(Optimal) 알고리즘이 실제 OS에서 사용되지 않는 이유는?", "code": null, "options": ["알고리즘이 너무 복잡하기 때문에", "미래의 페이지 참조 순서를 알 수 없기 때문에", "페이지 교체 횟수가 너무 많기 때문에", "메모리 용량을 너무 많이 필요로 하기 때문에"], "correct_index": 1, "explanation": "OPT는 이론상 최소 페이지 부재를 보장하지만, 미래의 페이지 참조 패턴을 미리 알아야 구현 가능하므로 실제로는 사용 불가능하다. 다른 알고리즘의 성능 비교 기준으로 활용된다."},
    {"question": "LRU(Least Recently Used) 알고리즘의 기본 원리는?", "code": null, "options": ["가장 오래전에 적재된 페이지를 교체한다", "가장 오랫동안 사용되지 않은 페이지를 교체한다(시간 지역성 활용)", "사용 횟수가 가장 적은 페이지를 교체한다", "임의로 페이지를 선택하여 교체한다"], "correct_index": 1, "explanation": "LRU는 최근에 사용되지 않은 페이지는 앞으로도 사용되지 않을 가능성이 높다는 시간 지역성(Temporal Locality) 원리를 활용한다."},
    {"question": "페이지 참조열이 7,0,1,2,0,3,0,4,2,3이고 프레임 수가 3일 때, FIFO 알고리즘 적용 시 페이지 부재 횟수는?", "code": null, "options": ["4번", "5번", "6번", "7번"], "correct_index": 2, "explanation": "FIFO로 7(miss),0(miss),1(miss),2(miss/교체7),0(hit),3(miss/교체0),0(miss/교체1),4(miss/교체2),2(miss/교체3),3(miss/교체0) 순으로 총 6번의 페이지 부재가 발생한다."},
    {"question": "클럭(Clock) 알고리즘(2차 기회 알고리즘)의 동작 원리는?", "code": null, "options": ["FIFO와 동일하게 동작한다", "참조 비트(Reference Bit)를 활용하여 LRU를 근사화하는 알고리즘으로, 참조된 페이지에 한 번의 기회를 더 준다", "가장 자주 사용된 페이지를 보호한다", "무작위로 교체 페이지를 선택한다"], "correct_index": 1, "explanation": "클럭 알고리즘은 원형 큐와 참조 비트를 사용하여, 교체 후보 페이지의 참조 비트가 1이면 0으로 바꾸고 기회를 주며 다음으로 넘어간다. 비트가 0이면 해당 페이지를 교체한다."}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000002', 20, '운영체제 종합', 'quiz', '{
  "questions": [
    {"question": "다음 중 운영체제의 핵심 기능이 아닌 것은?", "code": null, "options": ["프로세스 관리", "메모리 관리", "응용 프로그램 비즈니스 로직 구현", "파일 시스템 관리"], "correct_index": 2, "explanation": "운영체제는 하드웨어 자원 관리 및 응용 프로그램 실행 환경을 제공하는 시스템 소프트웨어이다. 비즈니스 로직 구현은 응용 프로그램의 역할이다."},
    {"question": "프로세스가 Ready 상태에서 Waiting 상태로 직접 전환될 수 없는 이유는?", "code": null, "options": ["Ready 상태의 프로세스는 메모리가 없기 때문에", "I/O 요청 등의 블로킹 작업은 CPU를 점유한 Running 상태에서만 발생하기 때문에", "Waiting 상태는 종료 직전 상태이기 때문에", "OS가 Ready와 Waiting을 구분하지 않기 때문에"], "correct_index": 1, "explanation": "프로세스는 CPU를 실제로 사용(Running)하는 도중에만 I/O 요청 등 블로킹 시스템 콜을 호출할 수 있으며, 이를 통해 Waiting 상태로 전환된다."},
    {"question": "다음 중 데드락 발생의 4가지 필요조건을 모두 올바르게 나열한 것은?", "code": null, "options": ["상호배제, 선점, 점유대기, 순환대기", "상호배제, 비선점, 점유대기, 순환대기", "상호배제, 비선점, 자원공유, 순환대기", "상호배제, 선점, 자원공유, 선형대기"], "correct_index": 1, "explanation": "데드락의 4가지 필요조건은 ① 상호배제, ② 비선점(Non-Preemption), ③ 점유와 대기(Hold and Wait), ④ 순환 대기(Circular Wait)이다. 4가지 모두 충족되어야 데드락이 발생한다."},
    {"question": "가상 메모리의 가장 큰 장점은?", "code": null, "options": ["CPU 처리 속도를 높인다", "물리 메모리보다 더 큰 주소 공간을 제공하여 프로그램이 물리 메모리 크기에 제약받지 않도록 한다", "디스크 입출력 속도를 향상시킨다", "네트워크 대역폭을 늘린다"], "correct_index": 1, "explanation": "가상 메모리는 각 프로세스에 독립적인 가상 주소 공간을 제공하며, 실제 물리 메모리보다 큰 프로그램 실행을 가능하게 하고 메모리 보호 및 공유도 용이하게 한다."},
    {"question": "다음 중 CPU 스케줄링, 동기화, 메모리 관리를 통합적으로 이해한 설명으로 가장 올바른 것은?", "code": null, "options": ["스케줄링 알고리즘은 동기화 문제와 완전히 독립적이다", "멀티스레딩 환경에서는 스케줄링으로 인한 컨텍스트 스위칭이 경쟁 상태를 유발할 수 있어 동기화가 필수적이며, 이 과정에서 페이지 폴트가 발생하면 I/O 대기로 전환된다", "메모리 관리는 CPU 스케줄링과 전혀 관련이 없다", "동기화 기법은 메모리 사용량을 줄이는 것이 주목적이다"], "correct_index": 1, "explanation": "실제 OS에서 스케줄링, 동기화, 메모리 관리는 서로 긴밀히 연관되어 있다. 스레드 간 컨텍스트 스위칭은 경쟁 상태를 유발하며, 실행 중 페이지 폴트 발생 시 해당 프로세스는 I/O 대기(Waiting) 상태로 전환되고 다른 프로세스가 스케줄링된다."}
  ]
}', 480);
