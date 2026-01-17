
import 'shape.dart';

class Triandle extends Shape{
  double strokeSize;
  Triandle({required super.corner , required this.strokeSize});

  @override
  printShape() {
    return print("Corner: ${corner} , Stroke size: ${strokeSize}");
  }
}