class Point {
  num x = 0, y = 0;
  void printInfo() => print('($x, $y)');
}

class Vector extends Point {
  num z = 0;
  @override
  void printInfo() => print('($x,$y,$z)');
}

class Coordinate implements Point {
  @override
  num x;

  @override
  num y;

  @override
  void printInfo() => print('($x,$y)');
}

void main(List<String> args) {
  var xxx = Vector();
  xxx
    ..x = 1
    ..y = 2
    ..z = 3;

  xxx.printInfo();

  var yyy = Coordinate();
  yyy
    ..x = 1
    ..y = 2;

  yyy.printInfo();

  print(yyy is Point);
  print(yyy is Coordinate);

  // .?, ??, ??=
  Coordinate c;
  c?.printInfo();
  c ?? print('c is null');
  c ??= new Coordinate();
  c.printInfo();
}
