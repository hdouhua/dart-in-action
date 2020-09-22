// bool isZero(int number) {
//   return number == 0;
// }
bool isZero(int number) => number == 0;

// void printInfo(int number, Function check) {
//   print('${number} is zero: ${check(number)}');
// }
void printInfo(int number, Function check) =>
    print('$number is zero: ${check(number)}');

void enable1Flags({bool bold, bool hidden}) => print('$bold, $hidden');
void enable2Flags({bool bold = true, bool hidden = false}) =>
    print('$bold, $hidden');
void enable3Flags(bool bold, [bool hidden]) => print('$bold, $hidden');
void enable4Flgs(bool bold, [bool hidden = false]) => print('$bold, $hidden');

// void main() {
//   Function f = isZero;
//   int x = 10;
//   int y = 0;
//   printInfo(x, f);
//   printInfo(y, f);
// }
void main() {
  enable1Flags(bold: true, hidden: true);
  enable2Flags(bold: true);
  enable3Flags(
    true,
  );
  enable4Flgs(true);
}
