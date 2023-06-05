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
