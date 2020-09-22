class Vector {
  num x, y;
  Vector(this.x, this.y);

  Vector operator +(Vector v)=>Vector(x+v.x, y+v.y);
  bool operator == (dynamic v)=>x == v.x && y ==v.y;

}

void main(List<String> args) {
  final x = Vector(3, 3);
  final y = new Vector(2,2);
  final z = Vector(1,1);
  
  print(x == (y +z));

}
