import '../colors.dart';
import 'shape.dart';

class Circle extends Shape{
  Colors fillColor;
  Circle({required super.corner, required this.fillColor});

  @override
  printShape() {
    return print("Corner: ${corner} , Fill ${fillColor.name}");
  }

}