

import 'product.dart';
import 'user.dart';

void main(List<String> args) {
    User user = User(name: "Smile", balance: 4070000);
    List<Product> products = [];
    Product macbookm1 = Product(name: "MacBook m1", price: 50000);
    Product macbookm2 = Product(name: "MacBook m2", price: 79000);
    Product macbookpro = Product(name: "MacBook pro m1", price: 50000);
    Product mac = Product(name: "Mac", price: 190000);
    Product LopTop = Product(name: "LopTop", price: 38000);

    products.add(macbookm1);
    products.add(macbookm2);
    products.add(macbookpro);
    products.add(mac);
    products.add(LopTop);

    int sum = 0;

    for (var product in products) {
      sum += product.price;
    }
    print("Общая стоимость ноутов составит ${sum}");
    if (user.balance >= sum){
      print("У пользователя ${user.name} хватает баланс на покупку всех товаров!");
    } else {
      print("Недостаточно");
      print("Баланс пользователя ${user.balance}");
    }

}