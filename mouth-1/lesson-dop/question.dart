import 'Checkable.dart';

class Question implements Checkable {
  final String text;
  final String answer;

  Question(this.text, this.answer);

  @override
  bool checkAnswer(String uanswer) {
    return answer == uanswer;
  }
}