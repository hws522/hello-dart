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
