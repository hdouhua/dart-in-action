void main(List<String> args) {
  var now = new DateTime.now();
  print('now ${now}');

  now = now.add(new Duration(days: 1));
  print('tomorrow ${now}');


  var s1 = 'some string', s2 ='some', re = new RegExp('^s.+?g\$');

  void match(s) {
    if(re.hasMatch(s)){
      print('regex matches ${s}');
    }else{
      print('regex doesn\'t match ${s}');
    }
  }

  match(s1);
  match(s2);

  var b;
  b = "abc";
  try {
    if(b){
      print('true: b is ${b}');
    }else{
      print('false: b is $b');
    }
  } catch (e) {
    print('error: b is $b');
  }
  b = null;
  if(b??false){
    print('true: b is $b');
  } else {
    print('false: b is $b');
  }

  var sb = new StringBuffer(),
  a = ['a','b','c','d','e'];
  for (var e in a){
    sb.write(e);
  }
  print('dynamic string created with stringbuffer ${sb.toString()}');
  print('join string array ${a.join(',')}');


}
