class Player {
  String name;
  String team;
  int xp;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  sayHello() {
    print("hi my name is $name");
  }
}

void main() {
  var testPlayer = Player(name: 'testName', xp: 1200, team: 'blue');
  testPlayer.name = 'changeName';
  testPlayer.xp = 1000;
  testPlayer.team = 'red';

  var cascadePlayer = Player(name: 'testName', xp: 1200, team: 'blue');

  var cascadePlayer2 = cascadePlayer
    ..name = 'changeName'
    ..xp = 1000
    ..team = 'red';
}
