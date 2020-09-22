class Point {
  num x, y, z;
  static num factor = 0;

  Point(this.x, this.y) : z = 0;
  Point.up(num x) : this(x, 0);

  void printInfo() => print('($x, $y, $z)');
  static void printZValue() => print('$factor');
}

void main() {
  var p = new Point(100, 300);
  p.printInfo();

  var p2 = new Point.up(100);
  p2.printInfo();

  Point.factor = 10;
  Point.printZValue();

  p.printInfo();
}
