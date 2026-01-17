import 'animal.dart';
import 'colors.dart';

class Cat extends Animal {
  Colors color;
  Cat({required super.bread, required super.age, required this.color});

  @override
  eat() {
    print("${bread} drink");
  }
  @override
  String toString() {
    return "Cat: bread = $bread, age: = $age, color = ${color.name}";
  }
}
