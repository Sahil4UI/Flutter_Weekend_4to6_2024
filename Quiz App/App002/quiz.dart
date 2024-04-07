import 'package:flutter/material.dart';
import 'package:myapp01/data/question_answer.dart';
import 'package:myapp01/questionScreen.dart';
import 'package:myapp01/result_screen.dart';
import 'package:myapp01/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var currentScreen = "start-screen";
  var q_answered;
  void changeScreen() {
    setState(() {
      currentScreen = "question-screen";
    });
  }

  void showResult(int c) {
    setState(() {
      q_answered = c;
    });
  }

  @override
  Widget build(BuildContext context) {
    late Widget currScreen;
    if (currentScreen == "start-screen") {
      currScreen = StartScreen(onTap: changeScreen);
    } else if (currentScreen == "question-screen") {
      currScreen = const QuestionScreen();
    }

    if (questionAnswer.length == q_answered) {
      currScreen = const ResultScreen();
    }

    return currScreen;
  }
}
