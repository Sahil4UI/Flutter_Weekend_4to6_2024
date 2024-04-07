import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.onTapAnswer, required this.answer});
  final String answer;
  final void Function() onTapAnswer;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTapAnswer, child: Text(answer));
  }
}
