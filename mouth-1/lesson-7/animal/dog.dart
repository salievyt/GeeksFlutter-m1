import 'animal.dart';
import 'patinfo.dart';

class Dog extends Animal {
  Dog(PetInfo petInfo) : super(petInfo);

  @override
  void makeSound() {
    print('${petInfo.name}: Гав гав');
  }

  @override
  void eat() {
    print('${petInfo.name} жует косточку');
  }
}