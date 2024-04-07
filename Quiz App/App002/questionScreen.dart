import 'package:flutter/material.dart';
import 'package:myapp01/answer_button.dart';
import 'package:myapp01/data/question_answer.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;
  late String currentQuestion;

  @override
  Widget build(BuildContext context) {
    currentQuestion = questionAnswer[currentQuestionIndex].question;

    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(currentQuestion),
        ...questionAnswer[currentQuestionIndex].answer.map((ans) {
          return AnswerButton(
            onTapAnswer: () {
              setState(() {
                currentQuestionIndex++;
              });
            },
            answer: ans,
          );
        })
      ],
    ));
  }
}
