typedef bool CALLBACK();

// // dynamic
// isNoble(int atomicNubmer) {
//   return true;
// }

bool isNoble([int atomicNubmer]) {
  return false;
}

void test(CALLBACK cb) {
  print(cb());
}

void main(List<String> args) {
  test(isNoble);
  execute(()=>print('xyz'));
}

void execute(var callback){
  callback();
}
