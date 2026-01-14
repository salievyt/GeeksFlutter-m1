class Product {
  String title;
  String desc;
  int price;
  Review? review;
  String? _country;
  static String color = "Black";

  // Product(this.title, this.desc, this.price);
  Product(this.title, {required this.desc, required this.price, this.review, required counter}){
    print("Создан товар: ${title}");
    _country = counter;
  }
  void sale(int amount){
    price -=amount;
  }

  getCountry(){
    return _country;
  }
}

class Review{
  String userName;
  String txt;
  double star;
  Review({required this.userName,required this.txt, required this.star});
}
