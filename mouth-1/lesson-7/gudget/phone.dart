import 'tech.dart';

class Phone implements Tech{
  @override
  memory() {
    print("512 GB");
  }

  @override
  size() {
    print("576 x 1280");
  }

  @override
  int price = 18600;
}