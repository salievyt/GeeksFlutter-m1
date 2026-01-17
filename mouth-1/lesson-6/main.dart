import 'animal.dart';
import 'cat.dart';
import 'colors.dart';
import 'dog.dart';

void main(List<String> args) {
  Dog dog = Dog(bread: "dog", age: 3);
  Cat cat = Cat(bread: "cat", age: 1, color: Colors.BLACK);
  List<Animal> animals = [cat, dog,createAnimal()];
  dog.eat();
  cat.eat();
  print(cat);
  print(animals);
  
}

Animal createAnimal(){
  return Cat(bread: "bread", age: 1, color: Colors.WHITE);
}
