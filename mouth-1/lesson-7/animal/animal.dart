import 'eatable.dart';
import 'patinfo.dart';

abstract class Animal implements Eatable {
  PetInfo petInfo;
  Animal(this.petInfo);
  void makeSound();
  void introduce() {
    print('Имя питомца: ${petInfo.name}, возраст: ${petInfo.age} лет');
  }
}