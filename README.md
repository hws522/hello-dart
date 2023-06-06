# hello-dart

### nomadcoders course

<br>
<br>
<br>

## 1.0 Hello World

**main**

main 함수는 모든 Dart 프로그램의 Entry point 이다.
main 함수에서 쓴 코드가 호출된다. (만약 main이 없다면 실행이 되지 않음)
dart는 자동으로 세미콜론을 붙여주지 않기 때문에 직접 붙여야 한다. (일부러 세미콜론을 안 쓸 때가 있기 때문)

```dart
void main(){
    print("hello world");
}
```

<br>

## 1.1 The Var Keyword

**변수를 만드는 2가지 방법**

```dart
void main() {
    var name = "pizza"; // 방법 1
    String name = "chicken"; // 방법 2
    name = "chicken ";
}
```

함수나 메소드 내부에 지역변수를 선언할 때는 var를 사용하고
class에서 변수나 property를 선언할 때는 타입을 지정해준다.

<br>

## 1.2 Dynamic Type

**Dynamic 타입**

여러가지 타입을 가질 수 있는 변수에 쓰는 키워드이다. (해당 변수의 타입을 알 수 없을 때 주로 사용)

변수를 선언할 때 dynamic을 쓰거나 값을 지정하지 않으면 dynamic 타입을 가진다.

```dart
void main(){
    var vName;
    dynamic dName;

    if (dName is String) {
    // dName 이 string 이기에 내부 메서드 많이 나옴.
    }
}
```

<br>

## 1.3 Nullable Variables

**Null Safety**

개발자가 null 값을 참조할 수 없도록 하는 것이다.

String 뒤에 ?를 붙여줌으로서 name이 String 또는 null이 될 수 있다고 명시해준 것.

기본적으로 모든 변수는 non-nullable(null 이 될 수 없음)

```dart
void main() {
  String? name = 'testName';
  name = null;
  // name.length -> null 일 수도 있어서 오류.
  if (name != null) {
    print(name.length);
  }
  print(name?.length);
}
```

<br>

## 1.4 Final Variables

**final**

var 대신 final 로 변수를 만들게 되면 이 변수는 수정할 수 없다.

Javascript const 랑 똑같다.

```dart
void main() {
    final name = "testName";
    name = "test2Name"; // 수정 불가

    final String username = "testStringName";
    // 명시적으로 타입을 추가로 지정할 순 있지만 컴파일러가 알아서 잘 추론하고, 값도 변경할 수 없기에 굳이 이렇게 할 필요는 없다.
    username = "test2StringName"; // 수정 불가
}
```

<br>

## 1.5 Late Variables

**late**

class 를 배워야 의미가 있는 키워드다. late 키워드를 사용한다면 선언과 할당을 분리할 수 있다.

class 내의 인스턴스 변수가 final 이면 만들면서 바로 할당해야하고 late final 이면 만들고 난 후에 할당해도 된다.

api 사용에 있어서 null을 실수로 사용하는 것을 방지하는 기능적인 부분을 강조한다.

초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용한다.

flutter 로 data fetching 을 할 때 유용하다.

또한 Nullable 타입이 아닌(?가 없는) 타입들은 빈 값(null)을 가질 수 없는데 late 키워드를 써줘서 사용하기 전에 할당한다고 알려줄 수 있다.

즉, null-safety가 보장된다. 그래서 한 함수 내에서 쓰는건 별 의미가 없다.

```dart
void main() {
    late final String name;

    print(name); // name 변수에 접근 불가
}
```

<br>

## 1.6 Constant Variables

**const**

dart 에서 const 는 `compile-time constant` 를 만들어준다.

const 는 컴파일할 때 알고 있는 값을 사용해야 한다.

만약 어떤 값인지 모르고, 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 그건 const 가 아닌 final 이나 var 가 되어야 한다.

```dart
void main() {
    const name = "testName"; // 컴파일 시점에 바뀌지 않는 값
    final apiData = fetchAPI(); // 컴파일 시점에 바뀌는 값
}
```

- const: 컴파일 시점에 바뀌지 않는 값 (상수)

- final: 컴파일 시점에 바뀌는 값 (API에서 받아온 값, 사용자 입력값)

<br>

## 2.0 Basic Data Types

**기본 데이터 타입**

아래 타입을 포함한 거의 대부분의 타입들이 객체로 이루어져 있다. (함수도 객체)

이것이 Dart 가 진정한 객체 지향 언어로 불리는 이유이다.

```dart
void main() {
    String name = "tom";
    bool isPlay = true;
    int age = 10;
    double money = 52.55;
    num x = 12;
    num y = 1.2;
}
```

<br>

## 2.1 Lists

**List를 사용하는 2가지 방법**

```dart
void main() {
    List<int> numbers = [1, 2, 3];
    var number2 = [4, 5, 6];
}
```

List 는 `collection if` 와 `collection for` 를 지원한다.

`collection if` 는 List 를 만들 때, if 를 통해 존재할 수도 안 할 수도 있는 요소를 가지고 만들 수 있다.

```dart
void main() {
    var giveMeFive = true;
    var numbers = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5, // giveMeFive가 true이면 5 넣음
    ];
    print(numbers);
}
```

<br>

## 2.2 String Interpolation

**변수 사용하는 방법**

`$` 기호를 붙이고 사용할 변수를 적어주면 된다.

만약 무언가를 계산하고 싶다면 `${ }` 형태로 적어주면 된다.

```dart
void main(){
    var name = "testName";
    var age = 10;
    var greeting = "hello $name, I'm ${age + 5}";

    print(greeting);
}
```

<br>

## 2.3 Collection For

**Collection For**

`collection for` 는 List 를 만들 때, for 를 통해 반복적으로 요소를 추가할 수 있다.

```dart
void main() {
  var oldFriends = ["nico", "lynn"];
  var newFriends = [
    "a",
    "b",
    for (var friend in oldFriends) "❤️ $friend",
  ];

  print(newFriends); // [a, b, ❤️ nico, ❤️ lynn]
}
```

<br>

## 2.4 Maps

**Map**

map 은 javascript 의 object, python 의 dictionary 와 비슷하다.

key 와 value 로 이루어져있다.

커서를 hover 하면 나타나는 `Object` 타입은 typescript 에서 `any` 와 같다.

key 와 value 는 어떤 자료형이던 가능하다.

다른 타입과 동일하게 var 를 이용하여 정의하거나, 자료형을 명시하여 정의한다.

dart는 모든 것이 class 이므로 map 또한 method 와 property 를 가진다.

복잡하게도 만들 수 있지만, key 와 value 를 가지는 구조로 object 를 만든다면 그것들이 특정 형태를 가질 때 class 를 추천한다.

```dart
void main() {
    var testMap = {
        'a': 'apple',
        'b': 'banana',
        'c': 12345,
    };

    Map<int, bool> testMap2 = {
        1: true,
        2: false,
    };

    Map<List<int>, bool> testMap3 = {
        [1, 0]: true,
        [1, 1]: false,
    };
}
```

<br>

## 2.5 Sets

**Set**

List 와의 차이는 중괄호와 중복여부다.

Set 또한 var 를 이용하거나, 명시적으로 정의할 수 있다.

Set 은 내부에 속한 모든 요소들이 유니크하다.

중복으로 요소를 추가하더라도 중복이 되지 않는다.

```dart
void main() {
  var numbers = {1, 2, 3};
  Set<int> numbers2 = {1, 2, 3};

  var listNumbers = [1, 2, 3];

  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  listNumbers.addAll([1, 1, 1]);

  print(numbers); // {1, 2, 3}
  print(listNumbers); // [1, 2, 3, 1, 1, 1]
}
```

```
Correction.

Dart Set -> JS Set Dart Set -> Python Tuple

Dart List -> JS Array Dart List -> Python List
```

<br>

## 3.0 Defining a Function

**Functions**

Dart 는 진정한 객체 지향 언어이므로 함수도 객체이며 타입이 Function 이다.

이는 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미한다.

```dart
void voidHello(String name) {
    print("Hello ${name} nice to meet you.");
}

String returnHello(String name) {
    return "Hello ${name} nice to meet you."
}

// 하나의 표현식만 포함하는 함수의 경우 아래와 같이 단축 구문을 사용할 수 있다.
// fat arrow syntax
String sayHello(String name) => "Hello ${name} nice to meet you.";

num plus(num a, num b) => a + b;

void main() {
    print(sayHello("sugar"));
}
```

<br>

## 3.1 Named Parameters

**Named parameters**

Named parameters 는 명시적으로 required 로 표시되지 않는 한 선택 사항이다.

Null safety 때문에, 함수의 매개변수에 중괄호를 추가하고 기본값 혹은, 필수값을 적용하면 된다.

함수를 호출할 때는 전달해야하는 요소의 순서에 상관없이 함수의 정의만 보면 된다.

```dart
String sayHello({String name = 'defaultName', required int age, required String country}) {
    return "${name} / ${age} / ${country}";
}

void main() {
    print(sayHello(name: "sugar", country: "Korea", age: 10 ));
}
```

<br>

## 3.2 Recap

- positional parameter

  - 파라미터의 순서가 중요하다. 위치를 모두 기억해야 한다.

  - 필수 파라미터를 모두 전달해야 컴파일 된다.

- Named parameter

  - 위치 대신 이름이 중요하다.

  - 순서 위치를 기억하지 않아도 되기에, 정의된 함수를 볼 필요가 없다.

  - null safety 때문에, 컴파일이 아닌 런타임에서 에러가 발생할 수 있다. (파라미터가 맞지않으면)

  - 기본값 혹은 필수값을 적용하면 된다.

<br>

## 3.3 Optional Positional Parameters

**Optional Positional Parameter**

대괄호(`[]`)를 통해 country 를 optional 값으로 지정해줄 수 있다.

optional positional parameter 를 지정할 때는 `[타입? 파라미터 = 기본값]` 의 형식을 지켜야 한다.

```dart
String sayHello(String name, int age, [String? country = ""]) {
    return 'Hello ${name}, You are ${age} from the ${country}';
}

void main() {
    var result = sayHello("sugar", 10);
    print(result);
}
```

<br>

## 3.4 QQ Operator

**QQ Operator**

`??` 연산자를 이용하면 왼쪽 값이 null 인지 체크해서 null 이 아니면 왼쪽 값을 리턴하고 null 이면 오른쪽 값을 리턴한다.

```dart
String capitalizeName(String? name) {
    return name?.toUpperCase() ?? "";
    // name?.toUpperCase() 가 null 이면 "" 출력. null 아니면 name?.toUpperCase() 출력
}
```

`??=` 연산자를 이용하면 변수 안에 값이 null 일 때를 체크해서 값을 할당해줄 수 있다.

```dart
void main() {
    String? name;
    name ??= "sugar";
    name = null;
    name ??= "js";
    print(name); // js
}
```

<br>

## 3.5 Typedef

**Typedef**

자료형에 사용자가 원하는 alias 를 붙일 수 있게 해준다. (자료형 이름의 별명을 만들 때 사용)

```dart
typedef ListOfInt = List;

ListOfInt reverseListOfNumbers(ListOfInt list) {
    var reversedList = list.reversed.toList();
    return reversedList;
}

---

typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
    return "Hi ${userInfo['name']}";
}

void main() {
    sayHi({"asdfasdf": "nico"});
}
```

<br>
