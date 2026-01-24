import 'animal/animal.dart';
import 'animal/cat.dart';
import 'animal/dog.dart';
import 'animal/patinfo.dart';

void main(List<String> args) {
  List<Animal> animals = [
    Dog(PetInfo('Рекс', 3)),
    Cat(PetInfo('Барсик', 2)),
    Dog(PetInfo('Шарик', 5)),
    Cat(PetInfo('Мурка', 1)),
  ];

  for (Animal animal in animals) {
    animal.introduce();
  }


  for (Animal animal in animals) {
    animal.makeSound();
  }
  for (Animal animal in animals) {
    animal.eat();
  }
}