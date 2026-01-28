import 'mathquestion.dart';
import 'question.dart';

void main() {
  List<Question> quiz = [
    Question("Какая столица Франции?", "Париж"),
    MathQuestion("Когда был основан гикс", "2019"),
    Question("Вторая столица Кыргызстана", "Ош"),
    MathQuestion("Сколько месецев нужно чтобы стать флаттер разработчиком", "6"),
  ];

  List<String> answers = [
    "Париж",
    "2021",
    "Ош", 
    "5",
  ];

  int score = runQuiz(quiz, answers);
  print('score: ${score} in ${quiz.length} quizs.');
}
int runQuiz(List<Question> questions, List<String> myAnswers) {
  int correctCount = 0;

  for (int i = 0; i < questions.length; i++) {
    if (questions[i].checkAnswer(myAnswers[i])) {
      correctCount++;
    }
  }

  return correctCount;
}