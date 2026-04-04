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
