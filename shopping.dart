class Item {
  double price;
  String name;

  // Item(name, price) {
  //   this.name = name;
  //   this.price = price;
  // }
  Item(this.name, this.price);
}

class ShoppingCart {
  String name;
  DateTime date;
  String code;
  List<Item> bookings;

  double price() {
    double sum = 0.0;
    for (var i in bookings) {
      sum += i.price;
    }
    return sum;
  }

  // ShoppingCart(name, code) {
  //   this.name = name;
  //   this.code = code;
  //   this.date = DateTime.now();
  // }
  ShoppingCart(this.name, this.code) : date = DateTime.now();

  getInfo() {
    return 'shopping info:' +
        '\n-----------------------' +
        '\n user:' +
        name +
        '\n promotion code:' +
        code +
        '\n total price:' +
        price().toString() +
        '\n date:' +
        date.toString() +
        '\n-----------------------';
  }
}

void main(List<String> args) {
  ShoppingCart sc = new ShoppingCart('zhangsan', '123456');
  sc.bookings = [Item('apple', 10.0), Item('peal', 20.0)];
  print(sc.getInfo());
}
