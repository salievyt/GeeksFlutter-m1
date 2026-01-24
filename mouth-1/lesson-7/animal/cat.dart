import 'animal.dart';
import 'patinfo.dart';

class Cat extends Animal {
  Cat(PetInfo petInfo) : super(petInfo);

  @override
  void makeSound() {
    print('${petInfo.name}: Мяу мяу');
  }

  @override
  void eat() {
    print('${petInfo.name} лакает молоко мур мур');
  }
}