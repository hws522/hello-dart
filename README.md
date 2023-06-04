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
