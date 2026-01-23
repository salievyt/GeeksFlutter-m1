import 'dart:developer';

import 'animal/cat.dart';
import 'gudget/loptop.dart';
import 'gudget/phone.dart';
import 'gudget/tech.dart';
import 'shape/circle.dart';
import 'shape/rectangle.dart';
import 'shape/shape.dart';

void main(List<String> args) {
    Cat cat = Cat();
    cat.makeSound();

    Shape shape = Rectangle();
    if (shape is Rectangle){
        print("квадрат");
    }else if (shape is Circle){
        print("круг");
    }

    List<Tech> gadgets = [
        Loptop(),
        Loptop(),
        Loptop(),
        Phone(),
        Phone(),
        Phone()
    ];
    int summaLopTop = 0;
    int summaPhone = 0;
    for (var gadget in gadgets) {
     if (gadget is Loptop){
        summaLopTop += gadget.price.toInt();
     }
     if (gadget is Phone){
        summaPhone += gadget.price.toInt();
     }
      
    }
    print("Сумма ноутов: ${summaLopTop}");
    print("Сумма телефонов: ${summaPhone}");
}