class Meta {
  double price;
  String name;
  Meta(this.name, this.price);
}

abstract class PrintHelper {
  printInfo() => print(getInfo());
  getInfo();
}

class Item extends Meta {
  Item(name, price) : super(name, price);

  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> bookings;

  double get price =>
      bookings.reduce((previous, current) => previous + current).price;

  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(name, 0);
  ShoppingCart({name}) : this.withCode(name: name, code: null);

  @override
  getInfo() {
    return """
shopping cart info:
-----------------------
user: $name
promotion code: ${code ?? 'don\'t have'}
total price: ${price.toString()}
date: ${date.toString()}
-----------------------
""";
  }
}

void main(List<String> args) {
  ShoppingCart sc = new ShoppingCart.withCode(name: 'zhangsan', code: '123456');
  sc
    ..bookings = [Item('apple', 10.0), Item('peal', 20.0)]
    ..printInfo();

  ShoppingCart sc2 = ShoppingCart(name: 'lisi');
  sc2
    ..bookings = [Item('banana', 15.0), Item('water melon', 40.0)]
    ..printInfo();
}
