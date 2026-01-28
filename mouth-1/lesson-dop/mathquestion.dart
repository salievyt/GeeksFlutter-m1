import 'question.dart';

class MathQuestion extends Question {
  MathQuestion(String text, String answer) : super(text, answer);

  @override
  bool checkAnswer(String answer) {
      double? user = double.tryParse(answer);
      double? correct = double.tryParse(text);
      return user == correct;
  }
}