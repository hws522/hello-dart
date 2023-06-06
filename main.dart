typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  sayHi({"asdfasdf": "nico"});
}
