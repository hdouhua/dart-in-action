import 'dart:math' as DM;

void main(List<String> args) {
  var v = true ? 30 : 60;
  switch (v) {
    case 30:
      print('switch statement');
      break;
  }

  if (v < 30) {
  } else if (v > 30) {
  } else {
    print('if-else statement');
  }

  callItForMe(fn()) {
    return fn();
  }

  rand() {
    v = new DM.Random().nextInt(50);
    return v;
  }

  while (true) {
    print('callItForMe(rand) ${callItForMe(rand)}');
    if (v != 30) {
      print(v);
      break;
    } else {
      print(v);
      continue;
    }
  }

  var n2 = (2.0).toInt(), top = int.parse('124');
  top = top ~/6;
  print('$n2, $top');
}
