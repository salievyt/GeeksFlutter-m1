import 'tech.dart';

class Loptop implements Tech{
  @override
  memory() {
    print("256 GB");
  }

  @override
  size() {
    print("1920 x 1040");
  }

  @override
  int price = 50000;
}