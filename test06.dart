// var example = const ["a", "b"];
const example = ["a", "b"];

example9() {
  for (var i = 0; i < example.length; i++) {
    print('example9 for loop ${example[i]}');
  }

  var i = 0;
  while (i < example.length) {
    print('example9 while loop ${example[i]}');
    i++;
  }

  for (var e in example) {
    print('example9 for-in loop ${e}');
  }

  example.forEach((e) => print('exampl9 forEach loop ${e}'));
}

void main(List<String> args) {

  example9();
}
