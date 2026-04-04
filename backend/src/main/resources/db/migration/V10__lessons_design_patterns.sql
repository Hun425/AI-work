INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000005', 1, '디자인 패턴이란?', 'flashcard', '{
  "cards": [
    {"front": "디자인 패턴이란 무엇인가?", "back": "소프트웨어 설계에서 반복적으로 발생하는 문제에 대한 재사용 가능한 해결책이다. GoF(Gang of Four)가 23가지 패턴을 정립하였다.", "hint": null},
    {"front": "GoF란 무엇인가?", "back": "''Gang of Four''의 약자로, Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides 4명의 저자가 쓴 디자인 패턴 책에서 유래한 용어이다.", "hint": null},
    {"front": "디자인 패턴의 세 가지 분류는?", "back": "생성 패턴(Creational): 객체 생성 방식 / 구조 패턴(Structural): 클래스·객체 조합 방식 / 행위 패턴(Behavioral): 객체 간 상호작용 방식", "hint": "생성·구조·행위"},
    {"front": "디자인 패턴을 사용하는 이유는?", "back": "검증된 해결책으로 재사용성을 높이고, 개발자 간 공통 언어를 제공하며, 유지보수성과 확장성을 향상시킨다.", "hint": null},
    {"front": "디자인 패턴과 알고리즘의 차이점은?", "back": "알고리즘은 특정 문제를 해결하는 구체적인 절차이고, 디자인 패턴은 설계 문제에 대한 고수준의 추상적 해결 템플릿이다.", "hint": null}
  ]
}', 480),

('c1000000-0000-0000-0000-000000000005', 2, 'SOLID 원칙', 'quiz', '{
  "questions": [
    {"question": "단일 책임 원칙(SRP)의 설명으로 올바른 것은?", "code": null, "options": ["하나의 클래스는 하나의 책임만 가져야 한다", "클래스는 확장에는 열려 있어야 한다", "하위 클래스는 상위 클래스를 대체할 수 있어야 한다", "클라이언트는 사용하지 않는 인터페이스에 의존하지 않아야 한다"], "correct_index": 0, "explanation": "SRP(Single Responsibility Principle)는 하나의 클래스가 변경되어야 하는 이유는 오직 하나뿐이어야 한다는 원칙이다."},
    {"question": "개방-폐쇄 원칙(OCP)에 대한 설명으로 올바른 것은?", "code": null, "options": ["클래스는 수정에는 열려 있어야 한다", "클래스는 확장에는 열려 있고 수정에는 닫혀 있어야 한다", "클래스는 확장과 수정 모두 열려 있어야 한다", "클래스는 확장에는 닫혀 있고 수정에는 열려 있어야 한다"], "correct_index": 1, "explanation": "OCP(Open-Closed Principle)는 기존 코드를 변경하지 않고 새로운 기능을 추가할 수 있도록 설계해야 한다는 원칙이다."},
    {"question": "리스코프 치환 원칙(LSP)을 위반하는 경우는?", "code": null, "options": ["자식 클래스가 부모 클래스의 메서드를 오버라이딩한다", "자식 클래스 인스턴스가 부모 클래스 인스턴스를 완전히 대체할 수 있다", "직사각형을 상속한 정사각형이 setWidth 호출 시 높이도 변경한다", "인터페이스를 구현하는 여러 클래스가 존재한다"], "correct_index": 2, "explanation": "LSP(Liskov Substitution Principle) 위반의 대표 예시가 Rectangle-Square 문제다. 정사각형이 직사각형의 행동 계약을 깨기 때문에 LSP를 위반한다."},
    {"question": "의존성 역전 원칙(DIP)의 핵심 내용은?", "code": null, "options": ["구체 클래스에 의존하고 추상화를 피해야 한다", "고수준 모듈이 저수준 모듈에 직접 의존해야 한다", "고수준 모듈과 저수준 모듈 모두 추상화에 의존해야 한다", "인터페이스는 가능한 한 크게 설계해야 한다"], "correct_index": 2, "explanation": "DIP(Dependency Inversion Principle)는 고수준 모듈과 저수준 모듈 모두 추상화(인터페이스)에 의존해야 하며, 구체적인 구현이 아닌 추상화에 의존해야 한다."},
    {"question": "인터페이스 분리 원칙(ISP)을 가장 잘 설명한 것은?", "code": null, "options": ["하나의 큰 인터페이스가 여러 작은 인터페이스보다 낫다", "클라이언트는 자신이 사용하지 않는 메서드에 의존하면 안 된다", "모든 인터페이스는 하나의 메서드만 가져야 한다", "인터페이스는 구현 클래스와 1:1로 대응되어야 한다"], "correct_index": 1, "explanation": "ISP(Interface Segregation Principle)는 하나의 범용 인터페이스보다 여러 개의 구체적인 인터페이스가 낫다는 원칙이다. 클라이언트는 불필요한 메서드에 의존하지 않아야 한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 3, 'UML 기초', 'flashcard', '{
  "cards": [
    {"front": "UML 클래스 다이어그램이란?", "back": "시스템의 클래스, 속성, 메서드, 클래스 간의 관계를 시각적으로 표현하는 구조 다이어그램이다. 설계 단계에서 구조를 명확히 하는 데 활용된다.", "hint": null},
    {"front": "UML에서 연관(Association) 관계란?", "back": "두 클래스가 서로 참조하는 관계. 실선 화살표로 표현하며 방향성을 나타낼 수 있다. 예: 학생(Student)이 강의(Course)를 수강한다.", "hint": "실선 화살표"},
    {"front": "UML에서 의존(Dependency) 관계란?", "back": "한 클래스가 다른 클래스를 일시적으로 사용하는 관계. 점선 화살표로 표현한다. 예: 메서드 파라미터나 지역 변수로 다른 클래스를 사용하는 경우.", "hint": "점선 화살표"},
    {"front": "UML에서 상속(Inheritance/Generalization) 관계란?", "back": "하위 클래스가 상위 클래스를 확장하는 관계(is-a). 속이 빈 삼각형 화살표가 있는 실선으로 표현한다. 예: Dog extends Animal", "hint": "속 빈 삼각형 실선"},
    {"front": "UML에서 구현(Realization) 관계란?", "back": "클래스가 인터페이스를 구현하는 관계. 속이 빈 삼각형 화살표가 있는 점선으로 표현한다. 예: ArrayList implements List", "hint": "속 빈 삼각형 점선"}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000005', 4, '싱글톤 패턴', 'quiz', '{
  "questions": [
    {"question": "싱글톤 패턴의 주요 목적은?", "code": null, "options": ["여러 개의 인스턴스를 효율적으로 관리하기 위해", "클래스의 인스턴스가 오직 하나만 존재하도록 보장하기 위해", "객체 생성 비용을 줄이기 위해 객체를 복제하기 위해", "관련된 객체들을 하나의 그룹으로 묶기 위해"], "correct_index": 1, "explanation": "싱글톤 패턴은 클래스의 인스턴스가 하나만 생성되도록 보장하고, 그 인스턴스에 전역적으로 접근할 수 있는 방법을 제공한다."},
    {"question": "다음 Java 코드에서 스레드 안전한 싱글톤 구현 방법은?", "code": "public class Singleton {\n    private static Singleton instance;\n    private Singleton() {}\n    public static Singleton getInstance() {\n        if (instance == null) {\n            instance = new Singleton();\n        }\n        return instance;\n    }\n}", "options": ["현재 코드는 이미 스레드 안전하다", "getInstance() 메서드에 synchronized 키워드를 추가한다", "instance 필드를 public으로 변경한다", "생성자를 public으로 변경한다"], "correct_index": 1, "explanation": "위 코드는 멀티스레드 환경에서 동시에 getInstance()를 호출할 때 두 개의 인스턴스가 생성될 수 있다. synchronized 키워드 또는 Double-Checked Locking, Initialization-on-demand holder 방식을 사용해 스레드 안전성을 확보해야 한다."},
    {"question": "싱글톤 패턴의 단점이 아닌 것은?", "code": null, "options": ["전역 상태로 인해 테스트가 어렵다", "멀티스레드 환경에서 동기화 처리가 필요하다", "인스턴스가 하나뿐이어서 메모리 절약이 된다", "클래스 간 결합도가 높아질 수 있다"], "correct_index": 2, "explanation": "인스턴스가 하나뿐이어서 메모리를 절약하는 것은 싱글톤의 장점이다. 나머지는 모두 단점에 해당한다."},
    {"question": "Java에서 Enum을 이용한 싱글톤의 장점은?", "code": "public enum Singleton {\n    INSTANCE;\n    public void doSomething() { ... }\n}", "options": ["성능이 가장 빠르다", "직렬화와 리플렉션 공격에 안전하다", "지연 초기화(Lazy Initialization)를 지원한다", "다중 상속을 허용한다"], "correct_index": 1, "explanation": "Enum 싱글톤은 JVM이 직렬화·역직렬화 시에도 단일 인스턴스를 보장하고, 리플렉션을 통한 추가 인스턴스 생성을 방지하므로 가장 안전한 싱글톤 구현 방식이다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 5, '팩토리 메서드 패턴', 'reading', '{
  "questions": [
    {"question": "다음 코드에서 팩토리 메서드 패턴의 핵심 원칙을 가장 잘 설명한 것은?", "code": "// 추상 Creator\npublic abstract class Dialog {\n    public void render() {\n        Button btn = createButton();\n        btn.onClick();\n        btn.render();\n    }\n    // 팩토리 메서드\n    public abstract Button createButton();\n}\n\n// 구체 Creator\npublic class WindowsDialog extends Dialog {\n    @Override\n    public Button createButton() {\n        return new WindowsButton();\n    }\n}\n\npublic class WebDialog extends Dialog {\n    @Override\n    public Button createButton() {\n        return new HTMLButton();\n    }\n}", "options": ["객체 생성 로직을 서브클래스에 위임하여 결합도를 낮춘다", "하나의 인스턴스만 생성되도록 보장한다", "객체를 복제하여 생성 비용을 줄인다", "관련된 여러 객체를 한 번에 생성한다"], "correct_index": 0, "explanation": "팩토리 메서드 패턴은 객체 생성을 서브클래스에 위임함으로써 상위 클래스가 구체 클래스에 의존하지 않도록 한다. Dialog는 createButton()이 어떤 버튼을 반환하는지 알 필요가 없다."},
    {"question": "팩토리 메서드 패턴에서 createButton()의 역할은?", "code": "public abstract Button createButton();", "options": ["구체적인 객체를 직접 생성하는 메서드", "어떤 클래스의 인스턴스를 만들지 서브클래스가 결정하도록 하는 팩토리 메서드", "버튼의 클릭 이벤트를 처리하는 메서드", "싱글톤 인스턴스를 반환하는 메서드"], "correct_index": 1, "explanation": "팩토리 메서드(createButton)는 추상 메서드로 선언되어 서브클래스(WindowsDialog, WebDialog)가 각자의 방식으로 객체를 생성하도록 한다. 상위 클래스는 반환 타입(Button 인터페이스)만 알면 된다."},
    {"question": "팩토리 메서드 패턴과 단순 팩토리(Simple Factory)의 차이는?", "code": null, "options": ["팩토리 메서드는 정적(static) 메서드를 사용한다", "팩토리 메서드는 상속을 통해 서브클래스에서 생성 메서드를 구현하고, 단순 팩토리는 조건문으로 객체를 생성한다", "단순 팩토리는 인터페이스를 사용하고, 팩토리 메서드는 사용하지 않는다", "두 패턴은 동일하다"], "correct_index": 1, "explanation": "단순 팩토리는 if/switch 조건문으로 객체를 선택 생성하는 반면, 팩토리 메서드 패턴은 상속 구조를 활용하여 서브클래스가 생성 메서드를 오버라이딩하는 방식이다. 팩토리 메서드가 OCP를 더 잘 준수한다."},
    {"question": "팩토리 메서드 패턴을 적용하기에 가장 적합한 상황은?", "code": null, "options": ["생성할 객체 타입을 컴파일 타임에 미리 알 수 있는 경우", "생성할 객체의 정확한 클래스를 미리 알 수 없고 서브클래스가 결정해야 하는 경우", "객체를 단 하나만 생성해야 하는 경우", "복잡한 객체를 단계별로 조립해야 하는 경우"], "correct_index": 1, "explanation": "팩토리 메서드 패턴은 어떤 클래스의 인스턴스를 생성할지 서브클래스에서 결정해야 할 때 적합하다. 예를 들어 크로스 플랫폼 UI 컴포넌트나 플러그인 시스템에서 활용된다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 6, '추상 팩토리 패턴', 'quiz', '{
  "questions": [
    {"question": "추상 팩토리 패턴의 핵심 목적은?", "code": null, "options": ["단일 객체 생성을 서브클래스에 위임한다", "관련된 객체들의 군(family)을 일관성 있게 생성하기 위한 인터페이스를 제공한다", "객체를 순차적으로 조립하여 복잡한 객체를 만든다", "동일한 인터페이스로 다양한 알고리즘을 교체한다"], "correct_index": 1, "explanation": "추상 팩토리 패턴은 연관된 객체들의 집합(예: Windows UI 컴포넌트 전체, Mac UI 컴포넌트 전체)을 생성하는 인터페이스를 제공하여, 구체 클래스에 의존하지 않고 일관된 제품군을 사용할 수 있게 한다."},
    {"question": "팩토리 메서드 패턴과 추상 팩토리 패턴의 가장 큰 차이는?", "code": null, "options": ["추상 팩토리는 인터페이스를 사용하지 않는다", "팩토리 메서드는 하나의 제품을 생성하고, 추상 팩토리는 여러 관련 제품들의 군을 생성한다", "추상 팩토리는 상속을 사용하지 않는다", "두 패턴의 차이는 없다"], "correct_index": 1, "explanation": "팩토리 메서드는 단일 제품의 생성을 서브클래스에 위임하지만, 추상 팩토리는 여러 관련 제품들(버튼, 체크박스, 텍스트필드 등)을 일관된 제품군으로 묶어 생성하는 인터페이스를 제공한다."},
    {"question": "다음 중 추상 팩토리 패턴이 적합한 시나리오는?", "code": null, "options": ["데이터베이스 연결 하나를 전역으로 관리할 때", "Windows, Mac, Linux 각각에 맞는 UI 컴포넌트 전체 세트를 생성할 때", "정렬 알고리즘을 런타임에 교체할 때", "복잡한 쿼리 객체를 단계별로 조립할 때"], "correct_index": 1, "explanation": "추상 팩토리의 대표적인 예시는 크로스 플랫폼 UI다. 운영체제별로 Button, Checkbox, TextField 등 UI 컴포넌트 전체 군을 일관성 있게 생성해야 할 때 추상 팩토리 패턴이 적합하다."},
    {"question": "추상 팩토리 패턴의 단점은?", "code": null, "options": ["객체 생성 방식을 숨길 수 없다", "새로운 종류의 제품을 추가할 때 모든 팩토리 클래스를 수정해야 한다", "관련 제품들 간의 일관성을 보장할 수 없다", "구체 클래스에 직접 의존하게 된다"], "correct_index": 1, "explanation": "추상 팩토리의 단점은 새로운 제품 종류를 추가할 때 추상 팩토리 인터페이스와 모든 구체 팩토리 클래스를 수정해야 하므로 OCP를 위반할 수 있다는 점이다."},
    {"question": "다음 추상 팩토리 코드에서 GUIFactory의 역할은?", "code": "public interface GUIFactory {\n    Button createButton();\n    Checkbox createCheckbox();\n}\n\npublic class WindowsFactory implements GUIFactory {\n    public Button createButton() { return new WindowsButton(); }\n    public Checkbox createCheckbox() { return new WindowsCheckbox(); }\n}\n\npublic class MacFactory implements GUIFactory {\n    public Button createButton() { return new MacButton(); }\n    public Checkbox createCheckbox() { return new MacCheckbox(); }\n}", "options": ["단일 버튼 객체만 생성한다", "관련 UI 컴포넌트 군을 생성하는 인터페이스를 정의한다", "객체의 복제를 담당한다", "UI 컴포넌트의 렌더링 로직을 구현한다"], "correct_index": 1, "explanation": "GUIFactory는 관련 제품(Button, Checkbox)을 생성하는 메서드들을 선언한 추상 팩토리 인터페이스다. 구체 팩토리(WindowsFactory, MacFactory)는 각 플랫폼에 맞는 제품군을 일관성 있게 생성한다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 7, '빌더 패턴', 'fill_blank', '{
  "questions": [
    {"question": "빌더 패턴에서 메서드 체이닝을 가능하게 하려면 각 setter 메서드가 무엇을 반환해야 하는가?", "code": "public class PersonBuilder {\n    private String name;\n    private int age;\n\n    public PersonBuilder setName(String name) {\n        this.name = name;\n        return ___;\n    }\n    public Person build() {\n        return new Person(name, age);\n    }\n}", "options": ["null", "this", "new PersonBuilder()", "void"], "correct_index": 1, "explanation": "메서드 체이닝을 구현하려면 각 메서드가 현재 빌더 객체(this)를 반환해야 한다. 이를 통해 builder.setName(\"홍길동\").setAge(30).build() 처럼 연속 호출이 가능해진다."},
    {"question": "다음 빌더 패턴 코드의 빈칸에 들어갈 올바른 코드는?", "code": "// 빌더 사용 예시\nPerson person = new PersonBuilder()\n    .setName(\"홍길동\")\n    .setAge(30)\n    .setEmail(\"hong@example.com\")\n    .___();\n\nSystem.out.println(person.getName());", "options": ["create", "make", "build", "getInstance"], "correct_index": 2, "explanation": "빌더 패턴에서 최종 객체를 생성하는 메서드는 관례적으로 build()라고 명명한다. 모든 속성을 설정한 후 build()를 호출하면 완성된 객체가 반환된다."},
    {"question": "Python에서 빌더 패턴의 빈칸에 알맞은 코드는?", "code": "class QueryBuilder:\n    def __init__(self):\n        self._table = None\n        self._conditions = []\n\n    def from_table(self, table):\n        self._table = table\n        return ___\n\n    def where(self, condition):\n        self._conditions.append(condition)\n        return self\n\n    def build(self):\n        query = f\"SELECT * FROM {self._table}\"\n        if self._conditions:\n            query += \" WHERE \" + \" AND \".join(self._conditions)\n        return query", "options": ["None", "self", "QueryBuilder()", "super()"], "correct_index": 1, "explanation": "Python에서도 메서드 체이닝을 위해 self를 반환해야 한다. 이를 통해 QueryBuilder().from_table(''users'').where(''age > 18'').build() 와 같이 체이닝이 가능해진다."},
    {"question": "빌더 패턴이 일반 생성자보다 유리한 경우는?", "code": "// 생성자 방식 (가독성 떨어짐)\nPizza pizza = new Pizza(\"large\", true, false, true, false, true);\n\n// 빌더 방식\nPizza pizza = new PizzaBuilder()\n    .size(\"large\")\n    .___( true)\n    .mushrooms(false)\n    .build();", "options": ["pepperoni", "new", "super", "this"], "correct_index": 0, "explanation": "빌더 패턴은 매개변수가 많고 선택적인 경우 가독성이 크게 향상된다. .pepperoni(true)처럼 각 매개변수의 의미가 명확해져 실수를 줄일 수 있다. 생성자에 boolean 값만 나열하는 것은 가독성이 매우 떨어진다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 8, '프로토타입 패턴', 'flashcard', '{
  "cards": [
    {"front": "프로토타입 패턴이란?", "back": "기존 객체를 복제(clone)하여 새로운 객체를 생성하는 패턴이다. 객체 생성 비용이 클 때 복제를 통해 효율적으로 새 객체를 만들 수 있다.", "hint": null},
    {"front": "얕은 복사(Shallow Copy)란?", "back": "객체의 필드 값을 복사하되, 참조 타입 필드는 같은 객체를 가리키는 복사. Java의 Object.clone() 기본 동작이다. 원본과 복사본이 내부 객체를 공유한다.", "hint": "참조 공유"},
    {"front": "깊은 복사(Deep Copy)란?", "back": "객체와 그 객체가 참조하는 모든 객체를 재귀적으로 복사하는 방식. 원본과 복사본이 완전히 독립적이다. Java에서 직렬화/역직렬화나 수동 구현으로 달성한다.", "hint": "완전 독립"},
    {"front": "Java에서 프로토타입 패턴 구현 방법은?", "back": "Cloneable 인터페이스를 구현하고 clone() 메서드를 오버라이딩한다.\n\n@Override\nprotected Object clone() throws CloneNotSupportedException {\n    return super.clone();
INSERT INTO lessons (course_id, sort_order, title_ko, lesson_type, content, estimated_seconds) VALUES
('c1000000-0000-0000-0000-000000000005', 1, '디자인 패턴이란?', 'flashcard', '{
  "cards": [
    {"front": "디자인 패턴(Design Pattern)이란?", "back": "소프트웨어 설계에서 반복적으로 발생하는 문제에 대한 재사용 가능한 해결책. GoF(Gang of Four)가 23가지 패턴을 정리한 것이 표준.", "hint": "GoF"},
    {"front": "GoF란 무엇인가?", "back": "Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides 4명의 저자. 1994년 ''Design Patterns'' 책에서 23가지 디자인 패턴을 정리함.", "hint": "Gang of Four"},
    {"front": "생성 패턴(Creational Pattern)이란?", "back": "객체의 생성 방식을 다루는 패턴. 싱글톤, 팩토리 메서드, 추상 팩토리, 빌더, 프로토타입이 포함됨.", "hint": "객체 생성"},
    {"front": "구조 패턴(Structural Pattern)이란?", "back": "클래스나 객체를 조합하여 더 큰 구조를 만드는 패턴. 어댑터, 데코레이터, 프록시, 파사드, 컴포지트, 브릿지, 플라이웨이트가 포함됨.", "hint": "객체 조합"},
    {"front": "행위 패턴(Behavioral Pattern)이란?", "back": "객체 간의 통신과 책임 분배를 다루는 패턴. 옵저버, 전략, 커맨드, 템플릿 메서드, 상태, 이터레이터 등이 포함됨.", "hint": "객체 간 협력"}
  ]
}', 480),

('c1000000-0000-0000-0000-000000000005', 2, 'SOLID 원칙', 'quiz', '{
  "questions": [
    {"question": "단일 책임 원칙(SRP)에 대한 설명으로 올바른 것은?", "code": null, "options": ["하나의 클래스는 하나의 책임만 가져야 한다", "하나의 메서드는 하나의 파라미터만 받아야 한다", "하나의 패키지는 하나의 클래스만 포함해야 한다", "하나의 인터페이스는 하나의 메서드만 가져야 한다"], "correct_index": 0, "explanation": "SRP(Single Responsibility Principle)는 클래스가 변경되어야 하는 이유가 오직 하나여야 한다는 원칙입니다."},
    {"question": "개방-폐쇄 원칙(OCP)에 대한 설명으로 올바른 것은?", "code": null, "options": ["소프트웨어 요소는 확장에는 열려 있고 수정에는 닫혀 있어야 한다", "소프트웨어 요소는 외부 접근에 열려 있고 내부 수정에 닫혀 있어야 한다", "클래스는 상속에는 열려 있고 인스턴스화에는 닫혀 있어야 한다", "메서드는 오버라이딩에는 열려 있고 오버로딩에는 닫혀 있어야 한다"], "correct_index": 0, "explanation": "OCP(Open/Closed Principle)는 기존 코드를 수정하지 않고도 기능을 추가할 수 있도록 설계해야 한다는 원칙입니다."},
    {"question": "리스코프 치환 원칙(LSP)의 핵심 내용은?", "code": null, "options": ["자식 클래스는 부모 클래스를 대체할 수 있어야 한다", "자식 클래스는 부모 클래스의 모든 메서드를 오버라이드해야 한다", "부모 클래스는 자식 클래스의 인스턴스를 생성할 수 없다", "부모 클래스는 추상 클래스여야 한다"], "correct_index": 0, "explanation": "LSP(Liskov Substitution Principle)는 프로그램의 정확성을 깨지 않으면서 자식 클래스의 인스턴스로 부모 클래스를 대체할 수 있어야 한다는 원칙입니다."},
    {"question": "인터페이스 분리 원칙(ISP)에 대한 설명으로 올바른 것은?", "code": null, "options": ["클라이언트는 자신이 사용하지 않는 메서드에 의존하지 않아야 한다", "인터페이스는 반드시 하나의 메서드만 가져야 한다", "모든 인터페이스는 하나의 클래스로 구현되어야 한다", "인터페이스는 다른 인터페이스를 상속받을 수 없다"], "correct_index": 0, "explanation": "ISP(Interface Segregation Principle)는 범용 인터페이스 하나보다 특정 클라이언트를 위한 여러 인터페이스로 분리하는 것이 낫다는 원칙입니다."},
    {"question": "의존성 역전 원칙(DIP)에 대한 올바른 설명은?", "code": null, "options": ["고수준 모듈은 저수준 모듈에 의존해서는 안 되며, 둘 다 추상화에 의존해야 한다", "저수준 모듈은 고수준 모듈에만 의존해야 한다", "모든 클래스는 인터페이스를 통해서만 통신해야 한다", "의존성 주입(DI)과 의존성 역전(DIP)은 동일한 개념이다"], "correct_index": 0, "explanation": "DIP(Dependency Inversion Principle)는 구체적인 구현이 아닌 추상화(인터페이스/추상 클래스)에 의존하도록 설계해야 한다는 원칙입니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 3, 'UML 기초', 'flashcard', '{
  "cards": [
    {"front": "UML 클래스 다이어그램이란?", "back": "시스템의 클래스, 속성, 메서드, 클래스 간의 관계를 시각적으로 표현하는 다이어그램. 소프트웨어 구조 설계에 필수적으로 사용됨.", "hint": "정적 구조 표현"},
    {"front": "연관 관계(Association)란?", "back": "두 클래스가 서로 관련이 있음을 나타내는 관계. 실선으로 표시하며, 방향성이 있을 수 있음. 예: Customer와 Order의 관계.", "hint": "실선"},
    {"front": "의존 관계(Dependency)란?", "back": "한 클래스가 다른 클래스를 일시적으로 사용하는 관계. 점선 화살표로 표시. 메서드 파라미터나 지역변수로 사용될 때 나타남.", "hint": "점선 화살표"},
    {"front": "상속 관계(Inheritance/Generalization)란?", "back": "자식 클래스가 부모 클래스의 속성과 메서드를 물려받는 관계. 빈 삼각형 화살표로 표시. IS-A 관계라고도 함.", "hint": "빈 삼각형 화살표"},
    {"front": "구현 관계(Realization)란?", "back": "클래스가 인터페이스의 명세를 구현하는 관계. 점선과 빈 삼각형 화살표로 표시. 예: ArrayList implements List.", "hint": "점선 + 빈 삼각형"}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000005', 4, '싱글톤 패턴', 'quiz', '{
  "questions": [
    {"question": "싱글톤 패턴의 목적으로 올바른 것은?", "code": null, "options": ["클래스의 인스턴스가 오직 하나만 생성되도록 보장하고 전역 접근점을 제공한다", "클래스의 모든 인스턴스가 동일한 상태를 공유하도록 한다", "여러 인스턴스를 생성하되 메모리를 공유하도록 한다", "클래스를 상속받아 새로운 싱글톤을 만들 수 있도록 한다"], "correct_index": 0, "explanation": "싱글톤 패턴은 인스턴스를 하나만 생성하고 어디서든 접근할 수 있는 전역 접근점을 제공하는 생성 패턴입니다."},
    {"question": "다음 Java 코드에서 스레드 안전(Thread-safe) 싱글톤을 구현하는 방식은?", "code": "public class Singleton {\n    private static volatile Singleton instance;\n    private Singleton() {}\n\n    public static Singleton getInstance() {\n        if (instance == null) {\n            synchronized (Singleton.class) {\n                if (instance == null) {\n                    instance = new Singleton();\n                }\n            }\n        }\n        return instance;\n    }\n}", "options": ["Double-Checked Locking 방식", "Eager Initialization 방식", "Static Inner Class 방식", "Enum 방식"], "correct_index": 0, "explanation": "위 코드는 Double-Checked Locking 방식으로, volatile 키워드와 synchronized 블록을 조합하여 스레드 안전성을 보장합니다."},
    {"question": "싱글톤 패턴의 단점으로 올바르지 않은 것은?", "code": null, "options": ["객체 생성 비용이 매우 높다", "전역 상태를 가지므로 테스트가 어렵다", "멀티스레드 환경에서 구현이 까다롭다", "단일 책임 원칙(SRP)을 위반할 수 있다"], "correct_index": 0, "explanation": "싱글톤 패턴 자체가 객체 생성 비용을 높이지는 않습니다. 오히려 한 번만 생성하므로 생성 비용을 줄일 수 있습니다. 나머지는 실제 단점입니다."},
    {"question": "Java에서 가장 안전하고 간결한 싱글톤 구현 방식은?", "code": null, "options": ["Enum을 이용한 구현", "synchronized 메서드를 이용한 구현", "static 변수를 이용한 즉시 초기화", "Double-Checked Locking 구현"], "correct_index": 0, "explanation": "Java의 Enum은 JVM이 싱글톤을 보장하며, 직렬화/역직렬화 문제와 리플렉션 공격에도 안전하여 가장 권장되는 방식입니다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 5, '팩토리 메서드 패턴', 'reading', '{
  "questions": [
    {"question": "다음 코드에서 팩토리 메서드 패턴의 핵심 역할을 하는 부분은?", "code": "abstract class Dialog {\n    public void render() {\n        Button btn = createButton();\n        btn.onClick();\n        btn.render();\n    }\n    // 팩토리 메서드\n    protected abstract Button createButton();\n}\n\nclass WindowsDialog extends Dialog {\n    @Override\n    protected Button createButton() {\n        return new WindowsButton();\n    }\n}\n\nclass WebDialog extends Dialog {\n    @Override\n    protected Button createButton() {\n        return new HTMLButton();\n    }\n}", "options": ["createButton() 추상 메서드", "render() 메서드", "WindowsButton 클래스", "Dialog 클래스의 생성자"], "correct_index": 0, "explanation": "createButton()이 팩토리 메서드입니다. 부모 클래스에서 인터페이스를 정의하고 서브클래스에서 어떤 객체를 생성할지 결정합니다."},
    {"question": "팩토리 메서드 패턴을 사용하는 주된 이유는?", "code": null, "options": ["객체 생성 코드와 사용 코드를 분리하여 결합도를 낮추기 위해", "객체를 더 빠르게 생성하기 위해", "메모리 사용량을 줄이기 위해", "여러 인스턴스를 한 번에 생성하기 위해"], "correct_index": 0, "explanation": "팩토리 메서드 패턴은 구체적인 클래스에 의존하지 않고 객체를 생성할 수 있게 하여 OCP(개방-폐쇄 원칙)를 따를 수 있도록 합니다."},
    {"question": "다음 Python 코드에서 빈칸에 들어갈 올바른 코드는?", "code": "from abc import ABC, abstractmethod\n\nclass Logistics(ABC):\n    @abstractmethod\n    def create_transport(self):\n        pass\n\n    def plan_delivery(self):\n        transport = self.create_transport()\n        transport.deliver()\n\nclass RoadLogistics(Logistics):\n    def create_transport(self):\n        return ________\n\nclass Truck:\n    def deliver(self):\n        print(''트럭으로 배송'')", "options": ["Truck()", "RoadLogistics()", "Logistics()", "Transport()"], "correct_index": 0, "explanation": "RoadLogistics의 팩토리 메서드 create_transport()는 구체 클래스인 Truck의 인스턴스를 반환해야 합니다."},
    {"question": "팩토리 메서드 패턴과 단순 팩토리(Simple Factory)의 차이점은?", "code": null, "options": ["팩토리 메서드는 서브클래스에서 객체 생성을 결정하지만, 단순 팩토리는 하나의 클래스에서 조건문으로 결정한다", "팩토리 메서드는 인터페이스를 사용하지 않지만, 단순 팩토리는 반드시 인터페이스를 사용한다", "팩토리 메서드는 하나의 객체만 생성하지만, 단순 팩토리는 여러 객체를 생성한다", "두 패턴은 완전히 동일하며 이름만 다르다"], "correct_index": 0, "explanation": "팩토리 메서드 패턴은 GoF 공식 패턴으로 서브클래스에서 생성할 클래스를 결정합니다. 단순 팩토리는 패턴이 아닌 관용구로 하나의 팩토리 클래스 내에서 if/switch로 분기합니다."},
    {"question": "팩토리 메서드 패턴이 적합하지 않은 경우는?", "code": null, "options": ["생성할 객체 타입이 단 하나로 고정되어 변경 가능성이 없는 경우", "새로운 타입의 객체가 자주 추가될 것으로 예상되는 경우", "객체 생성 과정이 복잡하여 서브클래스에서 커스터마이징이 필요한 경우", "플랫폼별로 다른 구현체를 사용해야 하는 경우"], "correct_index": 0, "explanation": "변경 가능성이 없이 단 하나의 객체 타입만 생성한다면 팩토리 메서드 패턴은 오히려 불필요한 복잡도를 추가합니다. 직접 생성이 더 적합합니다."}
  ]
}', 660),

('c1000000-0000-0000-0000-000000000005', 6, '추상 팩토리 패턴', 'quiz', '{
  "questions": [
    {"question": "추상 팩토리 패턴의 목적으로 올바른 것은?", "code": null, "options": ["관련된 객체들의 군(family)을 구체 클래스를 지정하지 않고 생성한다", "하나의 객체를 다양한 방식으로 생성한다", "객체 생성을 서브클래스에 위임한다", "기존 객체를 복제하여 새 객체를 만든다"], "correct_index": 0, "explanation": "추상 팩토리 패턴은 서로 연관된 객체들의 패밀리를 일관성 있게 생성할 수 있는 인터페이스를 제공합니다."},
    {"question": "다음 코드에서 추상 팩토리의 역할을 하는 것은?", "code": "interface GUIFactory {\n    Button createButton();\n    Checkbox createCheckbox();\n}\n\nclass WindowsFactory implements GUIFactory {\n    public Button createButton() { return new WindowsButton(); }\n    public Checkbox createCheckbox() { return new WindowsCheckbox(); }\n}\n\nclass MacFactory implements GUIFactory {\n    public Button createButton() { return new MacButton(); }\n    public Checkbox createCheckbox() { return new MacCheckbox(); }\n}", "options": ["GUIFactory 인터페이스", "WindowsFactory 클래스", "MacFactory 클래스", "Button 인터페이스"], "correct_index": 0, "explanation": "GUIFactory 인터페이스가 추상 팩토리 역할을 합니다. 관련 객체(Button, Checkbox)의 생성 메서드를 선언하고 각 구체 팩토리가 플랫폼별 구현을 제공합니다."},
    {"question": "추상 팩토리 패턴과 팩토리 메서드 패턴의 가장 큰 차이점은?", "code": null, "options": ["추상 팩토리는 관련된 여러 객체를 생성하는 반면, 팩토리 메서드는 하나의 객체 생성에 집중한다", "추상 팩토리는 인터페이스를 사용하지 않지만, 팩토리 메서드는 사용한다", "추상 팩토리는 상속을 사용하지만, 팩토리 메서드는 구성을 사용한다", "추상 팩토리는 생성 패턴이 아니라 구조 패턴이다"], "correct_index": 0, "explanation": "추상 팩토리는 여러 종류의 연관된 객체들을 생성하는 인터페이스를 제공합니다. 팩토리 메서드는 단일 제품을 생성하는 메서드를 서브클래스에서 구현하는 방식입니다."},
    {"question": "추상 팩토리 패턴의 단점으로 올바른 것은?", "code": null, "options": ["새로운 종류의 제품을 추가하려면 모든 팩토리 인터페이스와 구현 클래스를 수정해야 한다", "객체 생성을 중앙에서 관리할 수 없다", "서로 다른 제품군을 혼합하여 사용할 수 있다", "구체적인 클래스에 강하게 결합된다"], "correct_index": 0, "explanation": "추상 팩토리에 새 제품 타입을 추가하면 인터페이스가 바뀌므로 모든 구체 팩토리 클래스를 수정해야 합니다. 이는 OCP를 위반할 수 있는 단점입니다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 7, '빌더 패턴', 'fill_blank', '{
  "questions": [
    {"question": "빌더 패턴에서 메서드 체이닝을 사용하기 위해 각 setter 메서드가 반환해야 하는 것은?", "code": "class PersonBuilder {\n    private String name;\n    private int age;\n\n    public PersonBuilder setName(String name) {\n        this.name = name;\n        return ___;\n    }\n\n    public PersonBuilder setAge(int age) {\n        this.age = age;\n        return ___;\n    }\n\n    public Person build() {\n        return new Person(name, age);\n    }\n}", "options": ["this", "new PersonBuilder()", "null", "Person"], "correct_index": 0, "explanation": "메서드 체이닝을 구현하려면 각 설정 메서드가 현재 빌더 객체(this)를 반환해야 합니다. 이를 통해 builder.setName(\"홍길동\").setAge(30).build()처럼 연결할 수 있습니다."},
    {"question": "다음 Python 빌더 패턴 코드의 빈칸을 채우세요.", "code": "class QueryBuilder:\n    def __init__(self):\n        self._table = None\n        self._conditions = []\n        self._limit = None\n\n    def from_table(self, table):\n        self._table = table\n        return ___\n\n    def where(self, condition):\n        self._conditions.append(condition)\n        return self\n\n    def limit(self, n):\n        self._limit = n\n        return self\n\n    def build(self):\n        query = f''SELECT * FROM {self._table}''\n        if self._conditions:\n            query += '' WHERE '' + '' AND ''.join(self._conditions)\n        if self._limit:\n            query += f'' LIMIT {self._limit}''\n        return query", "options": ["self", "QueryBuilder()", "None", "query"], "correct_index": 0, "explanation": "from_table 메서드도 self를 반환해야 메서드 체이닝이 가능합니다. QueryBuilder().from_table(''users'').where(''age > 18'').limit(10).build() 형태로 사용합니다."},
    {"question": "빌더 패턴에서 최종 객체를 생성하는 메서드의 관용적인 이름은?", "code": "// 사용 예시\nPizza pizza = new Pizza.Builder()\n    .size(12)\n    .pepperoni(true)\n    .mushrooms(true)\n    .___()", "options": ["build()", "create()", "make()", "getInstance()"], "correct_index": 0, "explanation": "빌더 패턴에서 최종 객체를 생성하는 메서드는 관용적으로 build()라고 이름 짓습니다. 이 메서드가 호출될 때 모든 설정값을 이용해 대상 객체를 생성합니다."},
    {"question": "다음 코드에서 불변 객체를 만들기 위해 빌더의 build() 메서드가 호출한 생성자의 접근 제어자는?", "code": "public class ImmutableUser {\n    private final String name;\n    private final String email;\n    private final int age;\n\n    ___ ImmutableUser(Builder builder) {\n        this.name = builder.name;\n        this.email = builder.email;\n        this.age = builder.age;\n    }\n\n    public static class Builder {\n        // ...\n        public ImmutableUser build() {\n            return new ImmutableUser(this);\n        }\n    }\n}", "options": ["private", "public", "protected", "package-private (접근 제어자 없음)"], "correct_index": 0, "explanation": "불변 객체를 만들기 위해 생성자를 private으로 선언하면 외부에서 직접 생성할 수 없고 오직 Builder를 통해서만 생성할 수 있습니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 8, '프로토타입 패턴', 'flashcard', '{
  "cards": [
    {"front": "프로토타입 패턴이란?", "back": "기존 객체를 복제(clone)하여 새 객체를 생성하는 패턴. 객체 생성 비용이 클 때 유용하며, Java에서는 Cloneable 인터페이스와 clone() 메서드로 구현.", "hint": "객체 복제"},
    {"front": "얕은 복사(Shallow Copy)란?", "back": "객체의 필드값을 복사하되, 참조 타입 필드는 같은 객체를 가리키게 되는 복사 방식. Java의 Object.clone()은 기본적으로 얕은 복사를 수행함.", "hint": "참조 공유"},
    {"front": "깊은 복사(Deep Copy)란?", "back": "객체의 모든 필드를 재귀적으로 복사하여 원본과 완전히 독립된 새 객체를 생성하는 방식. 참조 타입 필드도 새로운 객체로 복사됨.", "hint": "완전한 독립"},
    {"front": "Java에서 프로토타입 패턴 구현 방법은?", "back": "Cloneable 인터페이스를 구현하고 clone() 메서드를 오버라이드. 또는 복사 생성자(Copy Constructor)나 정적 팩토리 메서드를 사용하여 구현 가능.", "hint": "Cloneable"},
    {"front": "프로토타입 패턴이 유용한 경우는?", "back": "1) 객체 생성 비용이 매우 클 때 2) 런타임에 객체 타입이 결정될 때 3) 유사한 객체를 여러 개 만들어야 할 때 4) 클래스 계층과 무관하게 복사해야 할 때", "hint": "생성 비용, 런타임"}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000005', 9, '어댑터 패턴', 'quiz', '{
  "questions": [
    {"question": "어댑터 패턴의 목적으로 올바른 것은?", "code": null, "options": ["호환되지 않는 인터페이스를 가진 클래스들이 함께 동작할 수 있도록 변환한다", "복잡한 서브시스템을 단순한 인터페이스로 감싼다", "객체에 새로운 기능을 동적으로 추가한다", "객체 생성을 캡슐화한다"], "correct_index": 0, "explanation": "어댑터 패턴은 기존 클래스의 인터페이스를 클라이언트가 기대하는 인터페이스로 변환합니다. 호환성 없는 인터페이스들의 협력을 가능하게 합니다."},
    {"question": "다음 코드에서 어댑터 역할을 하는 클래스는?", "code": "interface MediaPlayer {\n    void play(String filename);\n}\n\nclass VLCPlayer {\n    void playVLC(String filename) {\n        System.out.println(''VLC 재생: '' + filename);\n    }\n}\n\nclass VLCAdapter implements MediaPlayer {\n    private VLCPlayer vlcPlayer = new VLCPlayer();\n\n    @Override\n    public void play(String filename) {\n        vlcPlayer.playVLC(filename);\n    }\n}", "options": ["VLCAdapter", "MediaPlayer", "VLCPlayer", "없음"], "correct_index": 0, "explanation": "VLCAdapter가 어댑터입니다. MediaPlayer 인터페이스(타겟)를 구현하면서 내부적으로 VLCPlayer(어댑티)를 호출하여 인터페이스를 변환합니다."},
    {"question": "어댑터 패턴의 두 가지 구현 방식은?", "code": null, "options": ["클래스 어댑터(상속 사용)와 객체 어댑터(구성 사용)", "정적 어댑터와 동적 어댑터", "단방향 어댑터와 양방향 어댑터", "인터페이스 어댑터와 추상 어댑터"], "correct_index": 0, "explanation": "클래스 어댑터는 어댑티 클래스를 상속받아 구현하고, 객체 어댑터는 어댑티 객체를 내부에 포함(구성)하여 구현합니다. 객체 어댑터가 더 유연하여 일반적으로 선호됩니다."},
    {"question": "어댑터 패턴을 사용하기 적합한 상황은?", "code": null, "options": ["레거시 코드나 서드파티 라이브러리를 수정 없이 현재 시스템과 통합할 때", "새로운 기능을 기존 클래스에 추가할 때", "복잡한 객체 생성 과정을 단순화할 때", "객체 간의 일대다 의존 관계를 설정할 때"], "correct_index": 0, "explanation": "어댑터 패턴은 수정이 어려운 기존 코드의 인터페이스를 변환하여 새 시스템과 통합할 때 특히 유용합니다. OCP를 따르면서 호환성 문제를 해결합니다."},
    {"question": "Python에서 어댑터 패턴 구현 시 다음 코드의 동작은?", "code": "class KoreanPrinter:\n    def print_korean(self, text):\n        print(f''한국어 출력: {text}'')\n\nclass PrinterAdapter:\n    def __init__(self, printer):\n        self.printer = printer\n\n    def print(self, text):\n        self.printer.print_korean(text)\n\nadapter = PrinterAdapter(KoreanPrinter())\nadapter.print(''안녕하세요'')", "options": ["''한국어 출력: 안녕하세요''를 출력한다", "''안녕하세요''를 출력한다", "오류가 발생한다", "아무것도 출력하지 않는다"], "correct_index": 0, "explanation": "PrinterAdapter는 print() 메서드를 KoreanPrinter의 print_korean()으로 변환합니다. 따라서 ''한국어 출력: 안녕하세요''가 출력됩니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 10, '데코레이터 패턴', 'reading', '{
  "questions": [
    {"question": "다음 코드에서 데코레이터 패턴의 핵심 구조를 파악하세요. Coffee 인터페이스를 구현하면서 동시에 Coffee를 포함하는 클래스의 역할은?", "code": "interface Coffee {\n    String getDescription();\n    double getCost();\n}\n\nclass SimpleCoffee implements Coffee {\n    public String getDescription() { return ''커피''; }\n    public double getCost() { return 1.0; }\n}\n\nabstract class CoffeeDecorator implements Coffee {\n    protected Coffee coffee;\n    public CoffeeDecorator(Coffee coffee) {\n        this.coffee = coffee;\n    }\n}\n\nclass MilkDecorator extends CoffeeDecorator {\n    public MilkDecorator(Coffee coffee) { super(coffee); }\n    public String getDescription() { return coffee.getDescription() + '', 우유''; }\n    public double getCost() { return coffee.getCost() + 0.5; }\n}", "options": ["기본 컴포넌트를 감싸는 데코레이터 기반 클래스", "인터페이스만 구현하는 구체 컴포넌트", "객체 생성을 담당하는 팩토리 클래스", "알고리즘을 캡슐화하는 전략 클래스"], "correct_index": 0, "explanation": "CoffeeDecorator는 Coffee 인터페이스를 구현하면서(is-a) 동시에 Coffee 객체를 포함(has-a)합니다. 이 이중 구조가 데코레이터 패턴의 핵심으로 기능을 동적으로 추가할 수 있게 합니다."},
    {"question": "다음 코드 실행 결과는?", "code": "Coffee coffee = new SimpleCoffee();\ncoffee = new MilkDecorator(coffee);\ncoffee = new MilkDecorator(coffee);\nSystem.out.println(coffee.getDescription());\nSystem.out.println(coffee.getCost());", "options": ["커피, 우유, 우유 / 2.0", "커피 / 1.0", "우유, 우유, 커피 / 2.0", "오류 발생"], "correct_index": 0, "explanation": "데코레이터를 중첩 적용할 수 있습니다. SimpleCoffee(1.0)에 MilkDecorator(+0.5)를 두 번 적용하면 설명은 ''커피, 우유, 우유'', 비용은 2.0이 됩니다."},
    {"question": "데코레이터 패턴과 상속의 차이점으로 올바른 것은?", "code": null, "options": ["데코레이터는 런타임에 동적으로 기능을 추가하지만, 상속은 컴파일 타임에 정적으로 결정된다", "데코레이터는 상속보다 항상 더 빠르다", "데코레이터는 인터페이스만 사용할 수 있지만, 상속은 추상 클래스도 사용한다", "데코레이터와 상속은 완전히 동일한 결과를 낸다"], "correct_index": 0, "explanation": "상속은 컴파일 타임에 기능이 고정되지만, 데코레이터 패턴은 런타임에 원하는 데코레이터를 조합하여 기능을 동적으로 추가/제거할 수 있습니다."},
    {"question": "Java I/O에서 데코레이터 패턴이 사용된 예시로 올바른 것은?", "code": "InputStream is = new FileInputStream(''data.txt'');\nInputStream bis = new BufferedInputStream(is);\nInputStreamReader isr = new InputStreamReader(bis);\nBufferedReader br = new BufferedReader(isr);", "options": ["BufferedInputStream, InputStreamReader, BufferedReader가 FileInputStream을 데코레이팅한다", "FileInputStream만 데코레이터이다", "BufferedReader만 데코레이터이다", "데코레이터 패턴이 사용되지 않았다"], "correct_index": 0, "explanation": "Java I/O는 데코레이터 패턴의 대표적 예입니다. FileInputStream(기본 컴포넌트)에 BufferedInputStream, InputStreamReader, BufferedReader를 순서대로 감싸 기능을 추가합니다."},
    {"question": "데코레이터 패턴 사용 시 주의할 점은?", "code": null, "options": ["데코레이터 중첩이 많아지면 코드가 복잡해지고 디버깅이 어려워질 수 있다", "데코레이터는 원본 객체의 인터페이스를 변경할 수 있다", "데코레이터는 한 번만 적용할 수 있다", "데코레이터는 반드시 추상 클래스를 사용해야 한다"], "correct_index": 0, "explanation": "데코레이터 패턴은 여러 겹으로 중첩될 수 있어 객체 구성이 복잡해지고 순서에 따라 동작이 달라질 수 있습니다. 또한 특정 데코레이터를 제거하기 어렵다는 단점도 있습니다."}
  ]
}', 660),

('c1000000-0000-0000-0000-000000000005', 11, '프록시 패턴', 'quiz', '{
  "questions": [
    {"question": "프록시 패턴의 주요 목적으로 올바르지 않은 것은?", "code": null, "options": ["객체의 인터페이스를 다른 인터페이스로 변환한다", "실제 객체에 대한 접근을 제어한다", "실제 객체의 생성을 지연시킨다", "원격 객체에 대한 로컬 대리자 역할을 한다"], "correct_index": 0, "explanation": "인터페이스 변환은 어댑터 패턴의 목적입니다. 프록시 패턴은 동일한 인터페이스를 유지하면서 접근 제어, 지연 로딩, 캐싱, 로깅 등의 부가 기능을 제공합니다."},
    {"question": "지연 초기화(Lazy Initialization)를 구현하는 가상 프록시(Virtual Proxy)의 동작은?", "code": null, "options": ["실제 객체가 필요할 때까지 생성을 미루고, 처음 사용될 때 생성한다", "실제 객체를 미리 여러 개 만들어 풀에 저장해둔다", "실제 객체를 생성하지 않고 캐시된 결과만 반환한다", "실제 객체 생성을 다른 스레드에 위임한다"], "correct_index": 0, "explanation": "가상 프록시는 메모리 집약적인 객체의 생성을 실제로 필요한 순간까지 지연합니다. 처음 메서드가 호출될 때 실제 객체를 생성하고 이후 요청은 해당 객체에 전달합니다."},
    {"question": "다음 Python 코드에서 프록시 패턴의 어떤 유형을 구현하는가?", "code": "class DatabaseProxy:\n    def __init__(self, user_role):\n        self.user_role = user_role\n        self.db = RealDatabase()\n\n    def query(self, sql):\n        if self.user_role != ''admin'':\n            raise PermissionError(''관리자만 접근 가능합니다'')\n        return self.db.query(sql)\n\n    def read(self, sql):\n        return self.db.read(sql)", "options": ["보호 프록시(Protection Proxy)", "가상 프록시(Virtual Proxy)", "원격 프록시(Remote Proxy)", "캐싱 프록시(Caching Proxy)"], "correct_index": 0, "explanation": "보호 프록시는 실제 객체에 대한 접근 권한을 제어합니다. 위 코드는 사용자 역할에 따라 query 메서드에 대한 접근을 제한하는 보호 프록시입니다."},
    {"question": "캐싱 프록시(Caching Proxy)의 주요 용도는?", "code": null, "options": ["동일한 요청에 대한 결과를 저장하고 재사용하여 성능을 향상시킨다", "객체 생성 시 초기화를 지연한다", "원격 서버의 객체를 로컬에서 대리한다", "객체에 대한 접근 권한을 검사한다"], "correct_index": 0, "explanation": "캐싱 프록시는 동일한 요청(예: 같은 URL 이미지 로드, 같은 DB 쿼리)에 대한 결과를 캐시에 저장하고 재활용합니다. 이를 통해 응답 속도를 높이고 리소스 사용을 줄입니다."},
    {"question": "프록시 패턴과 데코레이터 패턴의 차이점으로 올바른 것은?", "code": null, "options": ["프록시는 접근 제어에 초점을 두고, 데코레이터는 기능 추가에 초점을 둔다", "프록시는 반드시 인터페이스를 사용하지만, 데코레이터는 사용하지 않는다", "프록시는 래핑 객체를 여러 겹으로 쌓을 수 있지만, 데코레이터는 하나만 가능하다", "프록시와 데코레이터는 구조적으로 완전히 다르다"], "correct_index": 0, "explanation": "두 패턴은 구조적으로 유사하지만 의도가 다릅니다. 프록시는 실제 객체에 대한 접근 제어가 목적이고, 데코레이터는 객체에 동적으로 새로운 기능을 추가하는 것이 목적입니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 12, '파사드 패턴', 'flashcard', '{
  "cards": [
    {"front": "파사드 패턴이란?", "back": "복잡한 서브시스템에 대한 단순화된 인터페이스를 제공하는 구조 패턴. 클라이언트가 여러 복잡한 클래스들을 직접 다루지 않고 파사드 클래스 하나와 상호작용하도록 함.", "hint": "단순화된 인터페이스"},
    {"front": "파사드 패턴의 주요 장점은?", "back": "1) 복잡한 서브시스템과의 결합도 감소 2) 클라이언트 코드 단순화 3) 서브시스템 내부 변경 시 파사드만 수정하면 됨 4) 레이어드 아키텍처 구현에 활용됨", "hint": "결합도, 단순화"},
    {"front": "파사드 패턴의 실제 사용 예시는?", "back": "홈시어터 시스템: 영화 재생 시 TV ON, 조명 OFF, 소리 설정, DVD 재생 등 여러 동작을 watchMovie() 하나로 단순화. Spring의 JdbcTemplate도 파사드 패턴의 예임.", "hint": "홈시어터, Spring"},
    {"front": "파사드 패턴과 어댑터 패턴의 차이는?", "back": "파사드는 여러 클래스로 구성된 복잡한 서브시스템을 단순화하는 새 인터페이스를 제공. 어댑터는 기존 인터페이스를 다른 인터페이스로 변환. 파사드는 단순화, 어댑터는 변환이 목적.", "hint": "단순화 vs 변환"},
    {"front": "파사드 패턴의 단점은?", "back": "파사드가 모든 클래스와 결합될 수 있어 ''전지전능한 객체(God Object)''가 될 위험이 있음. 또한 서브시스템의 모든 기능을 파사드로 제공하지 않으면 클라이언트가 서브시스템에 직접 접근해야 함.", "hint": "God Object"}
  ]
}', 420),

('c1000000-0000-0000-0000-000000000005', 13, '컴포지트 패턴', 'fill_blank', '{
  "questions": [
    {"question": "컴포지트 패턴에서 개별 객체와 복합 객체를 동일하게 다루기 위한 공통 인터페이스의 메서드 호출 결과는?", "code": "interface FileSystemItem {\n    String getName();\n    int getSize();\n}\n\nclass File implements FileSystemItem {\n    private String name;\n    private int size;\n    public String getName() { return name; }\n    public int getSize() { return ___; }\n}\n\nclass Directory implements FileSystemItem {\n    private String name;\n    private List<FileSystemItem> children = new ArrayList<>();\n    public String getName() { return name; }\n    public int getSize() {\n        return children.stream().mapToInt(FileSystemItem::getSize).sum();\n    }\n    public void add(FileSystemItem item) { children.add(item); }\n}", "options": ["size", "0", "name.length()", "children.size()"], "correct_index": 0, "explanation": "File(리프 노드)의 getSize()는 자신의 size 필드를 반환합니다. Directory(복합 노드)는 자식들의 크기를 합산합니다. 이렇게 동일한 인터페이스로 리프와 복합 객체를 동일하게 처리하는 것이 컴포지트 패턴입니다."},
    {"question": "컴포지트 패턴으로 트리 구조를 출력하는 코드의 빈칸을 채우세요.", "code": "class Component {\n    def __init__(self, name):\n        self.name = name\n        self.children = []\n\n    def add(self, component):\n        self.children.append(component)\n\n    def display(self, depth=0):\n        print('' '' * depth + self.name)\n        for child in ___:\n            child.display(depth + 1)", "options": ["self.children", "self", "Component", "children"], "correct_index": 0, "explanation": "self.children을 순회하여 각 자식 컴포넌트의 display()를 재귀적으로 호출합니다. 이를 통해 트리 구조 전체를 깊이 우선으로 순회하며 출력할 수 있습니다."},
    {"question": "컴포지트 패턴에서 자식 객체를 추가/제거할 수 있는 노드를 무엇이라 하는가?", "code": "// 파일 시스템 예시\n// 파일 = ___\n// 폴더 = ___\n\nDirectory root = new Directory(''root'');\nDirectory src = new Directory(''src'');\nFile main = new File(''Main.java'', 100);\n\nroot.___(src);   // 자식 추가\nsrc.___(main);  // 자식 추가", "options": ["add", "insert", "append", "push"], "correct_index": 0, "explanation": "컴포지트 패턴에서 자식을 추가하는 메서드는 관용적으로 add()라고 명명합니다. File은 리프(Leaf) 노드이고 Directory는 복합(Composite) 노드입니다."},
    {"question": "다음 코드에서 컴포지트 패턴의 핵심 특징인 균일한 처리(Uniform Treatment)를 보여주는 부분은?", "code": "void printTotalSize(FileSystemItem item) {\n    System.out.println(item.getName() + '': '' + item.___ + '' bytes'');\n}", "options": ["getSize()", "getName()", "add()", "remove()"], "correct_index": 0, "explanation": "getSize()를 호출할 때 item이 File인지 Directory인지 알 필요가 없습니다. 동일한 인터페이스(getSize())로 리프와 복합 객체를 균일하게 처리하는 것이 컴포지트 패턴의 핵심입니다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 14, '브릿지 패턴', 'quiz', '{
  "questions": [
    {"question": "브릿지 패턴의 핵심 목적으로 올바른 것은?", "code": null, "options": ["추상화와 구현을 분리하여 각각 독립적으로 변경할 수 있게 한다", "두 클래스 사이의 통신을 중재하는 객체를 도입한다", "호환되지 않는 인터페이스를 연결한다", "복잡한 서브시스템을 단순화한다"], "correct_index": 0, "explanation": "브릿지 패턴은 추상화(Abstraction)와 구현(Implementation)을 분리하여 클래스 계층 폭발을 방지하고 각 차원을 독립적으로 확장할 수 있게 합니다."},
    {"question": "다음 코드에서 브릿지 패턴이 해결하는 문제는?", "code": "// 브릿지 패턴 없이: 클래스 폭발\n// RedCircle, BlueCircle, RedSquare, BlueSquare...\n\n// 브릿지 패턴 적용\ninterface Color {\n    String fill();\n}\nclass Red implements Color {\n    public String fill() { return ''빨간색''; }\n}\nclass Blue implements Color {\n    public String fill() { return ''파란색''; }\n}\n\nabstract class Shape {\n    protected Color color;  // 브릿지!\n    public Shape(Color color) { this.color = color; }\n    abstract void draw();\n}\nclass Circle extends Shape {\n    public Circle(Color color) { super(color); }\n    public void draw() {\n        System.out.println(color.fill() + '' 원'');\n    }\n}", "options": ["색상과 모양의 조합으로 인한 클래스 폭발 문제", "인터페이스 호환성 문제", "객체 생성 비용 문제", "순환 참조 문제"], "correct_index": 0, "explanation": "브릿지 없이는 N가지 모양 × M가지 색상 = N×M 클래스가 필요합니다. 브릿지 패턴으로 모양과 색상을 분리하면 N+M 클래스만으로 동일한 기능을 구현할 수 있습니다."},
    {"question": "브릿지 패턴에서 구현부(Implementor)를 참조하는 필드를 갖는 클래스는?", "code": null, "options": ["추상화(Abstraction) 클래스", "구체 구현(ConcreteImplementor) 클래스", "클라이언트 클래스", "인터페이스"], "correct_index": 0, "explanation": "브릿지 패턴에서 추상화(Abstraction) 클래스가 구현부 인터페이스(Implementor)에 대한 참조를 가집니다. 이 참조가 ''브릿지'' 역할을 합니다."},
    {"question": "브릿지 패턴이 적합한 상황은?", "code": null, "options": ["추상화와 구현 모두 독립적으로 확장이 필요하고 다양한 조합이 예상될 때", "단순한 클래스 계층 구조를 가진 시스템에서", "객체 생성 로직이 복잡할 때", "알고리즘을 런타임에 교체해야 할 때"], "correct_index": 0, "explanation": "브릿지 패턴은 추상화와 구현이 독립적으로 변화하고 두 차원의 다양한 조합이 필요할 때 클래스 폭발을 방지하는 데 효과적입니다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 15, '옵저버 패턴', 'quiz', '{
  "questions": [
    {"question": "옵저버 패턴에서 상태 변화를 감지하고 알림을 보내는 객체를 무엇이라 하는가?", "code": null, "options": ["Subject(주제/발행자)", "Observer(옵저버/구독자)", "Event(이벤트)", "Handler(핸들러)"], "correct_index": 0, "explanation": "Subject(주제)는 상태를 가지고 있으며 상태 변화 시 등록된 옵저버들에게 알림을 보냅니다. Observer(옵저버)는 알림을 받아 처리하는 구독자입니다."},
    {"question": "다음 Java 코드에서 옵저버 패턴의 핵심 메서드는?", "code": "interface Observer {\n    void update(String event);\n}\n\nclass EventManager {\n    private Map<String, List<Observer>> listeners = new HashMap<>();\n\n    public void subscribe(String type, Observer listener) {\n        listeners.computeIfAbsent(type, k -> new ArrayList<>()).add(listener);\n    }\n\n    public void unsubscribe(String type, Observer listener) {\n        listeners.getOrDefault(type, new ArrayList<>()).remove(listener);\n    }\n\n    public void notify(String type, String data) {\n        for (Observer listener : listeners.getOrDefault(type, new ArrayList<>())) {\n            listener.update(data);\n        }\n    }\n}", "options": ["notify() - 등록된 옵저버들에게 이벤트를 전달한다", "subscribe() - 옵저버를 등록한다", "unsubscribe() - 옵저버를 제거한다", "update() - 옵저버가 알림을 처리한다"], "correct_index": 0, "explanation": "notify()는 Subject가 상태 변화 시 모든 등록된 Observer의 update()를 호출하는 핵심 메서드입니다. subscribe/unsubscribe는 보조 메서드이고, update는 Observer측 메서드입니다."},
    {"question": "옵저버 패턴과 발행-구독(Pub-Sub) 패턴의 차이점은?", "code": null, "options": ["옵저버 패턴에서는 Subject와 Observer가 서로 알고 있지만, Pub-Sub에서는 브로커를 통해 간접적으로 통신한다", "두 패턴은 완전히 동일하다", "옵저버 패턴은 비동기 방식이고, Pub-Sub은 동기 방식이다", "옵저버 패턴은 하나의 옵저버만 가질 수 있다"], "correct_index": 0, "explanation": "옵저버 패턴에서 Subject는 Observer를 직접 참조합니다. Pub-Sub 패턴에서는 메시지 브로커(이벤트 버스)가 중간에서 발행자와 구독자를 분리합니다."},
    {"question": "Python에서 옵저버 패턴을 구현할 때, 다음 코드의 실행 결과는?", "code": "class Stock:\n    def __init__(self):\n        self._observers = []\n        self._price = 0\n\n    def attach(self, observer):\n        self._observers.append(observer)\n\n    def set_price(self, price):\n        self._price = price\n        self._notify()\n\n    def _notify(self):\n        for obs in self._observers:\n            obs.update(self._price)\n\nclass PriceAlert:\n    def update(self, price):\n        print(f''가격 알림: {price}원'')\n\nstock = Stock()\nstock.attach(PriceAlert())\nstock.set_price(50000)", "options": ["''가격 알림: 50000원'' 출력", "''50000'' 출력", "오류 발생", "아무것도 출력되지 않음"], "correct_index": 0, "explanation": "set_price(50000) 호출 → _notify() 호출 → PriceAlert의 update(50000) 호출 → ''가격 알림: 50000원'' 출력. 옵저버 패턴의 기본 흐름입니다."},
    {"question": "옵저버 패턴 구현 시 메모리 누수가 발생할 수 있는 경우는?", "code": null, "options": ["사용이 끝난 옵저버를 Subject에서 제거(unsubscribe)하지 않을 때", "옵저버가 너무 많은 데이터를 처리할 때", "Subject의 상태 변화가 너무 빈번할 때", "옵저버가 동기적으로 처리할 때"], "correct_index": 0, "explanation": "Subject가 Observer에 대한 참조를 계속 가지고 있으면, Observer를 더 이상 사용하지 않아도 GC가 수거하지 못합니다. 반드시 unsubscribe를 통해 참조를 해제해야 합니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 16, '전략 패턴', 'fill_blank', '{
  "questions": [
    {"question": "전략 패턴에서 알고리즘을 교체하기 위한 핵심 메서드의 빈칸을 채우세요.", "code": "class Sorter:\n    def __init__(self, strategy):\n        self.strategy = strategy\n\n    def set_strategy(self, strategy):\n        self.___ = strategy\n\n    def sort(self, data):\n        return self.strategy.sort(data)\n\nsorter = Sorter(BubbleSort())\nsorter.sort([3, 1, 4])\nsorter.set_strategy(QuickSort())\nsorter.sort([3, 1, 4])", "options": ["strategy", "sort", "algorithm", "method"], "correct_index": 0, "explanation": "set_strategy()는 self.strategy 필드를 교체합니다. 이를 통해 런타임에 알고리즘을 동적으로 교체할 수 있는 것이 전략 패턴의 핵심입니다."},
    {"question": "다음 Java 전략 패턴 코드에서 Context 클래스의 빈칸을 채우세요.", "code": "interface PaymentStrategy {\n    void pay(int amount);\n}\n\nclass CreditCard implements PaymentStrategy {\n    public void pay(int amount) {\n        System.out.println(''신용카드로 '' + amount + ''원 결제'');\n    }\n}\n\nclass KakaoPay implements PaymentStrategy {\n    public void pay(int amount) {\n        System.out.println(''카카오페이로 '' + amount + ''원 결제'');\n    }\n}\n\nclass ShoppingCart {\n    private ___ strategy;\n\n    public ShoppingCart(PaymentStrategy strategy) {\n        this.strategy = strategy;\n    }\n\n    public void checkout(int amount) {\n        strategy.pay(amount);\n    }\n}", "options": ["PaymentStrategy", "CreditCard", "KakaoPay", "Payment"], "correct_index": 0, "explanation": "Context 클래스(ShoppingCart)는 구체 전략 클래스(CreditCard, KakaoPay)가 아닌 전략 인터페이스(PaymentStrategy)를 참조해야 합니다. 이것이 DIP를 따르는 전략 패턴의 핵심입니다."},
    {"question": "전략 패턴과 if-else 분기문의 차이를 보여주는 코드에서 빈칸을 채우세요.", "code": "// 전략 패턴 사용 전 (if-else)\ndef compress(data, type):\n    if type == ''zip'':\n        return zip_compress(data)\n    elif type == ''tar'':\n        return tar_compress(data)\n    # 새 형식 추가 시 이 함수를 수정해야 함!\n\n// 전략 패턴 사용 후\nclass Compressor:\n    def __init__(self, strategy):\n        self.strategy = strategy\n\n    def compress(self, data):\n        return self.___.compress(data)\n        # 새 형식 추가 시 새 클래스만 추가하면 됨!", "options": ["strategy", "self", "data", "type"], "correct_index": 0, "explanation": "self.strategy.compress(data)로 현재 설정된 전략 객체에 압축 작업을 위임합니다. 새로운 압축 형식이 추가되어도 Compressor 클래스를 수정하지 않아도 됩니다(OCP 준수)."},
    {"question": "다음 코드에서 전략을 람다식으로 표현할 때 빈칸을 채우세요.", "code": "import java.util.*;\n\nList<String> names = Arrays.asList(''바나나'', ''사과'', ''체리'');\n\n// 전략을 람다식으로 전달\nCollections.sort(names, ___);\n\n// 결과: [바나나, 사과, 체리] → 길이순 정렬", "options": ["(a, b) -> a.length() - b.length()", "(a, b) -> a.compareTo(b)", "Comparator.naturalOrder()", "String::compareTo"], "correct_index": 0, "explanation": "Java의 Comparator는 전략 패턴의 대표적인 예입니다. 람다식 (a, b) -> a.length() - b.length()는 문자열 길이를 기준으로 정렬하는 전략입니다."}
  ]
}', 540),

('c1000000-0000-0000-0000-000000000005', 17, '커맨드 패턴', 'reading', '{
  "questions": [
    {"question": "다음 코드에서 커맨드 패턴의 구성 요소를 파악하세요. execute() 메서드와 undo() 메서드를 모두 갖는 인터페이스의 역할은?", "code": "interface Command {\n    void execute();\n    void undo();\n}\n\nclass LightOnCommand implements Command {\n    private Light light;\n    public LightOnCommand(Light light) { this.light = light; }\n    public void execute() { light.on(); }\n    public void undo() { light.off(); }\n}\n\nclass RemoteControl {\n    private Command command;\n    private Command lastCommand;\n\n    public void setCommand(Command command) { this.command = command; }\n    public void pressButton() {\n        command.execute();\n        lastCommand = command;\n    }\n    public void pressUndo() { lastCommand.undo(); }\n}", "options": ["요청을 객체로 캡슐화하는 커맨드 인터페이스", "실제 동작을 수행하는 리시버(Receiver)", "커맨드를 실행하는 인보커(Invoker)", "커맨드를 생성하는 팩토리"], "correct_index": 0, "explanation": "Command 인터페이스는 요청(execute)과 취소(undo)를 객체로 캡슐화합니다. 이를 통해 요청의 큐잉, 로깅, 실행 취소가 가능해집니다."},
    {"question": "커맨드 패턴에서 실제 작업을 수행하는 객체(예: Light)를 무엇이라 하는가?", "code": null, "options": ["리시버(Receiver)", "인보커(Invoker)", "커맨드(Command)", "클라이언트(Client)"], "correct_index": 0, "explanation": "리시버(Receiver)는 커맨드가 위임하는 실제 비즈니스 로직을 포함합니다. 위 예에서 Light 클래스가 리시버이며, on()/off() 메서드가 실제 동작을 수행합니다."},
    {"question": "매크로 커맨드(Macro Command)란 무엇인가?", "code": "class MacroCommand implements Command {\n    private List<Command> commands;\n\n    public MacroCommand(List<Command> commands) {\n        this.commands = commands;\n    }\n\n    public void execute() {\n        for (Command cmd : commands) {\n            cmd.execute();\n        }\n    }\n\n    public void undo() {\n        for (int i = commands.size() - 1; i >= 0; i--) {\n            commands.get(i).undo();\n        }\n    }\n}", "options": ["여러 커맨드를 하나로 묶어 순서대로 실행하는 커맨드", "크기가 큰 커맨드", "반복 실행되는 커맨드", "시스템 수준의 커맨드"], "correct_index": 0, "explanation": "매크로 커맨드는 컴포지트 패턴을 활용하여 여러 커맨드를 하나로 묶습니다. execute()는 순서대로, undo()는 역순으로 실행하여 일련의 작업을 원자적으로 처리합니다."},
    {"question": "커맨드 패턴이 사용되는 실제 사례로 올바르지 않은 것은?", "code": null, "options": ["데이터베이스 인덱스 최적화", "텍스트 에디터의 실행 취소(Ctrl+Z)", "GUI 버튼의 이벤트 핸들러", "트랜잭션 처리 시스템"], "correct_index": 0, "explanation": "DB 인덱스 최적화는 커맨드 패턴과 직접적인 관련이 없습니다. 실행 취소/재실행, GUI 이벤트, 트랜잭션은 커맨드 패턴의 대표적인 활용 사례입니다."},
    {"question": "다음 Python 코드에서 커맨드 패턴을 활용한 실행 취소 스택의 동작은?", "code": "class TextEditor:\n    def __init__(self):\n        self.text = ''''\n        self.history = []\n\n    def execute_command(self, command):\n        command.execute()\n        self.history.append(command)\n\n    def undo(self):\n        if self.history:\n            command = self.history.pop()\n            command.undo()\n\neditor = TextEditor()\neditor.execute_command(WriteCommand(editor, ''안녕''))\neditor.execute_command(WriteCommand(editor, ''하세요''))\neditor.undo()", "options": ["''하세요'' 추가가 취소되어 텍스트가 ''안녕''이 된다", "모든 텍스트가 삭제된다", "''안녕'' 추가가 취소된다", "오류가 발생한다"], "correct_index": 0, "explanation": "history 스택의 마지막 커맨드(WriteCommand ''하세요'')를 pop하고 undo()를 호출합니다. 따라서 ''하세요'' 추가가 취소되어 텍스트는 ''안녕''만 남습니다."}
  ]
}', 660),

('c1000000-0000-0000-0000-000000000005', 18, '템플릿 메서드 패턴', 'quiz', '{
  "questions": [
    {"question": "템플릿 메서드 패턴의 목적으로 올바른 것은?", "code": null, "options": ["알고리즘의 골격을 부모 클래스에서 정의하고, 일부 단계를 서브클래스에서 재정의하도록 한다", "알고리즘을 완전히 캡슐화하여 런타임에 교체할 수 있게 한다", "여러 알고리즘을 하나의 클래스에서 관리한다", "알고리즘의 각 단계를 독립적인 클래스로 분리한다"], "correct_index": 0, "explanation": "템플릿 메서드 패턴은 부모 클래스에서 알고리즘의 뼈대(template method)를 정의하고, 변하는 부분만 서브클래스에서 오버라이드하도록 합니다."},
    {"question": "다음 코드에서 템플릿 메서드 역할을 하는 것은?", "code": "abstract class DataMiner {\n    // 템플릿 메서드\n    public final void mine() {\n        String data = extractData();\n        String parsed = parseData(data);\n        analyzeData(parsed);\n        sendReport(parsed);\n    }\n\n    protected abstract String extractData();\n    protected abstract String parseData(String data);\n\n    protected void analyzeData(String data) {\n        System.out.println(''기본 분석: '' + data);\n    }\n\n    private void sendReport(String data) {\n        System.out.println(''보고서 발송: '' + data);\n    }\n}", "options": ["mine() 메서드", "extractData() 메서드", "analyzeData() 메서드", "sendReport() 메서드"], "correct_index": 0, "explanation": "mine()이 템플릿 메서드입니다. final로 선언되어 서브클래스에서 재정의할 수 없고, 알고리즘의 전체 골격(순서)을 정의합니다. 추상 메서드들이 변하는 부분입니다."},
    {"question": "템플릿 메서드 패턴에서 훅(Hook) 메서드란?", "code": null, "options": ["서브클래스에서 선택적으로 오버라이드할 수 있는 기본 구현을 가진 메서드", "반드시 서브클래스에서 구현해야 하는 추상 메서드", "템플릿 메서드의 각 단계를 연결하는 메서드", "외부에서 알고리즘을 주입하는 메서드"], "correct_index": 0, "explanation": "훅 메서드는 기본 구현(보통 빈 구현)을 가지지만 서브클래스에서 필요에 따라 오버라이드할 수 있는 선택적 확장 포인트입니다. 위 코드의 analyzeData()가 훅 메서드입니다."},
    {"question": "템플릿 메서드 패턴과 전략 패턴의 차이점은?", "code": null, "options": ["템플릿 메서드는 상속으로 변형을 구현하고, 전략은 구성(위임)으로 구현한다", "템플릿 메서드는 런타임에 교체 가능하지만, 전략은 컴파일 타임에 고정된다", "템플릿 메서드는 행위 패턴이 아니지만, 전략은 행위 패턴이다", "두 패턴은 완전히 동일하다"], "correct_index": 0, "explanation": "템플릿 메서드는 상속을 사용하여 알고리즘 변형을 정의합니다. 전략 패턴은 인터페이스와 구성을 사용하여 런타임에 알고리즘을 교체합니다. 전략이 더 유연하지만 템플릿 메서드가 더 단순합니다."},
    {"question": "Java에서 템플릿 메서드 패턴의 실제 사용 예시로 올바른 것은?", "code": null, "options": ["AbstractList의 get()과 size()를 구현하면 나머지 메서드들이 동작하는 구조", "ArrayList의 add() 메서드", "HashMap의 put() 메서드", "String의 compareTo() 메서드"], "correct_index": 0, "explanation": "Java의 AbstractList는 템플릿 메서드 패턴의 대표적인 예입니다. get()과 size() 추상 메서드만 구현하면, indexOf(), contains(), iterator() 등 나머지 메서드들이 이를 기반으로 동작합니다."}
  ]
}', 600),

('c1000000-0000-0000-0000-000000000005', 19, '상태 패턴', 'flashcard', '{
  "cards": [
    {"front": "상태 패턴이란?", "back": "객체의 내부 상태가 변경될 때 객체의 행동이 변하도록 하는 행위 패턴. 상태를 별도의 클래스로 분리하고, 상태에 따라 다른 행동을 위임함. 상태 머신(State Machine)을 객체지향으로 구현.", "hint": "상태에 따른 행동 변화"},
    {"front": "상태 패턴 vs if-else 분기문의 차이는?", "back": "if-else로 상태를 관리하면 새 상태 추가 시 모든 메서드의 조건문을 수정해야 함. 상태 패턴은 새 상태 클래스를 추가하기만 하면 되어 OCP를 준수하고 코드 중복이 줄어듦.", "hint": "OCP 준수"},
    {"front": "상태 패턴의 구성 요소는?", "back": "1) Context: 현재 상태를 가지며 상태에 행동을 위임 2) State 인터페이스: 상태별 행동 메서드 선언 3) ConcreteState: 각 상태의 구체적 행동 구현 및 상태 전이 처리", "hint": "Context, State, ConcreteState"},
    {"front": "자판기를 상태 패턴으로 구현할 때 상태의 예시는?", "back": "NoMoneyState(돈 없음), HasMoneyState(돈 있음), SoldState(판매 중), SoldOutState(품절). 각 상태 클래스가 insertCoin(), pressButton(), dispense() 등의 메서드를 상태에 맞게 구현.", "hint": "자판기 상태"},
    {"front": "상태 패턴과 전략 패턴의 차이는?", "back": "구조는 유사하지만 의도가 다름. 전략 패턴은 클라이언트가 알고리즘을 선택하고 교체. 상태 패턴은 Context나 ConcreteState 자신이 상태를 전이시키며 클라이언트는 상태를 직접 변경하지 않음.", "hint": "누가 상태를 변경하는가"}
  ]
}', 480),

('c1000000-0000-0000-0000-000000000005', 20, '패턴 종합: 상황별 패턴 선택', 'quiz', '{
  "questions": [
    {"question": "데이터베이스 연결 객체를 애플리케이션 전체에서 하나만 유지해야 할 때 적합한 패턴은?", "code": null, "options": ["싱글톤 패턴", "프로토타입 패턴", "팩토리 메서드 패턴", "빌더 패턴"], "correct_index": 0, "explanation": "싱글톤 패턴은 인스턴스를 하나만 유지해야 하는 경우에 사용합니다. DB 연결, 로그 관리자, 설정 관리자 등이 대표적인 사용 사례입니다."},
    {"question": "파일 탐색기에서 파일과 폴더를 동일하게 처리하여 재귀적으로 크기를 계산해야 할 때 적합한 패턴은?", "code": null, "options": ["컴포지트 패턴", "데코레이터 패턴", "브릿지 패턴", "프록시 패턴"], "correct_index": 0, "explanation": "컴포지트 패턴은 트리 구조의 개별 객체(파일)와 복합 객체(폴더)를 동일한 인터페이스로 처리할 때 사용합니다."},
    {"question": "결제 시스템에서 신용카드, 카카오페이, 토스페이 등 결제 방식을 런타임에 교체해야 할 때 적합한 패턴은?", "code": null, "options": ["전략 패턴", "커맨드 패턴", "상태 패턴", "템플릿 메서드 패턴"], "correct_index": 0, "explanation": "전략 패턴은 알고리즘(결제 방식)을 캡슐화하고 런타임에 교체할 수 있게 합니다. 각 결제 방식을 별도 전략 클래스로 구현하면 됩니다."},
    {"question": "알림 시스템에서 이메일, SMS, 푸시 알림을 동적으로 조합하여 보내야 할 때 적합한 패턴은?", "code": null, "options": ["데코레이터 패턴", "옵저버 패턴", "파사드 패턴", "어댑터 패턴"], "correct_index": 0, "explanation": "데코레이터 패턴은 기본 알림에 이메일, SMS, 푸시 알림 기능을 동적으로 추가할 수 있습니다. 여러 알림 방식을 조합하여 중첩 적용할 수 있습니다."},
    {"question": "다음 중 패턴과 그 분류가 잘못 연결된 것은?", "code": null, "options": ["옵저버 - 생성 패턴", "싱글톤 - 생성 패턴", "데코레이터 - 구조 패턴", "전략 - 행위 패턴"], "correct_index": 0, "explanation": "옵저버 패턴은 행위 패턴(Behavioral Pattern)입니다. 생성 패턴은 싱글톤, 팩토리 메서드, 추상 팩토리, 빌더, 프로토타입입니다. 구조 패턴은 어댑터, 데코레이터, 프록시, 파사드, 컴포지트, 브릿지, 플라이웨이트입니다."}
  ]
}', 660);
