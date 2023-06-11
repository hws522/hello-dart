class Human {
  final String name;
  Human({required this.name}); // 호출 받는다.
  void sayHello() {
    print("Hello! $name");
  }
}

enum Team { blue, red }

class Player extends Human {
  final Team team;

  Player({required this.team, required String name}) : super(name: name);
  // Human의 생성자 함수를 호출한다.
}

void main() {
  var player = Player(team: Team.red, name: 'testname');
}
