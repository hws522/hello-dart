void main() {
  var oldFriends = ["nico", "lynn"];
  var newFriends = [
    "a",
    "b",
    for (var friend in oldFriends) "❤️ $friend",
  ];

  print(newFriends); // [a, b, ❤️ nico, ❤️ lynn]
}
