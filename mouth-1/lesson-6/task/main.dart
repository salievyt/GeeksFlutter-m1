import '../colors.dart';
import 'circle.dart';
import 'triandle.dart';

void main(List<String> args) {
  Circle circle = Circle(corner: 1000, fillColor: Colors.GRAY);
  Triandle triandle = Triandle(corner: 3, strokeSize: 2.3);
  circle.printShape();
  triandle.printShape();
}