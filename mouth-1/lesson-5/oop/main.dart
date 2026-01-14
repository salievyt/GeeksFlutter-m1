import 'product.dart';
import 'car.dart';

void main(List<String> args) {
  Product product = Product(
    "iPhone 17 pro max",
    desc: "desc",
    price: 1000,
    counter: "KGZ",
    review: Review(userName: "Sm1le", txt: "Good", star: 4.9),
  );

  Product.color = "White";
  print(Product.color);
  product.sale(600);
  print(product.price);
  print(product.getCountry());

  List<Car> cars = [];

  Car toyota = Car(model: "Toyota", year: 2020, prise: 2500);
  Car BMW = Car(model: "BMW", year: 2019, prise: 1800);
  Car Mercedes = Car(model: "Mercedes", year: 2021, prise: 3000);
  
  cars.add(toyota);
  cars.add(BMW);
  cars.add(Mercedes);
  for (var car in cars) {
    if (car.prise > 2000) {
      print(car.model);
    }
  }
}
