import 'dart:math';

printInteger(int a) {
  print('hello world, this is $a.');
}

main() {
  var number = 2019;
  printInteger(number);

  int hex = 0xeeadbeef;
  double y = 1.1;
  double exponents = 1.13e5;

  print(hex);
  print(exponents);
  print(y.ceil());
  print(ln2);

  number = 0;
  // assert(number);
  assert(number == 0);

  var s = 'cat';
  print('this is a uppercased string: ${s.toUpperCase()}');

  var s2 = 'Hello' + ' ' + 'World!';
  print(s2);

  var s3 = """this is a 
multi-line string. """;
  print(s3);

  var arr1 = ["Tom", "Andy", "Jack"];
  print(arr1);
  var arr2 = List.of([1, 2, 3]);
  arr2.add(499);
  arr2.forEach((v) => print('${v}'));
  print(arr2 is List<int>);

// var map1 = {"name": "Tom", "sex": 'male'};
  var map1 = <String, String>{"name": "Tom", "sex": 'male'};
  var map2 = new Map();
  map2['name'] = 'Tom';
  map2['sex'] = 'male';
  map2.forEach((k, v) => print('${k}: ${v}'));
  var map3 = new Map<String, String>();
  map3['name'] = 'Andy';
  map3['sex'] = 'other';
  map3.forEach((k, v) => print('${k}: ${v}'));
  print(map1 is Map<String, String>);
  print(map2 is Map<String, String>);

// const or final
  final name = 'andy';
  const count = 3;
  var ix = 5;
  var iy = 7;
  final z = ix / iy;
print(z);

}
