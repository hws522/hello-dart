class Player {
  final String name;
  String team;
  int xp;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  Player.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  sayHello() {
    print("hi my name is $name");
  }
}

void main() {
  var apiData = [
    {
      'name': 'testName1',
      'team': 'red',
      'xp': 0,
    },
    {
      'name': 'testName2',
      'team': 'red',
      'xp': 0,
    },
    {
      'name': 'testName3',
      'team': 'red',
      'xp': 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player = Player.fromJson(playerJson);
    player.sayHello();
  });
}
