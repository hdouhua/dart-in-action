void main(List<String> args) {
// Future -> Promise
// support chain

  // Future.delayed(new Duration(seconds: 2), () {
  //   // return 'hello world';
  //   throw new AssertionError('Error');
  // }).then((data) {
  //   print('test: $data');
  // }, onError: (e) {
  //   print(e);
  // }).whenComplete(() {
  //   print('finally');
  // });

  // Future.wait([
  //   Future.delayed(Duration(seconds: 2), () {
  //     return 'hello';
  //   }),
  //   Future.delayed(Duration(seconds: 4), () {
  //     return 'world';
  //   })
  // ]).then((results) {
  //   print(results[0] + ' ' + results[1]);
  // }).catchError((e) {
  //   print(e);
  // });

  task();
}

task() async {
  try {
    var id = await login('alice', '****');
    var userInfo = await getUserInfo(id);
    await saveUserInfo(userInfo);

    print('log in');
  } catch (e) {
    print('error: $e');
  }
}

Future<String> login(String userName, String pwd) {
  return Future.delayed(Duration(seconds: 2), () {
    return userName;
  });
}

Future<String> getUserInfo(String id) async {
  return Future.delayed(Duration(seconds: 2), () {
    return id;
  });
}

Future saveUserInfo(String userInfo) {
  return Future.delayed(Duration(seconds: 2), () {
    print('processing ... $userInfo');
    return userInfo;
  });
}
