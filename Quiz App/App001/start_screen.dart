import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 300,
        ),

        // Opacity(
        //   opacity: 0.8,
        //   child: Image.asset(
        //     "assets/images/logo.png",
        //     width: 300,
        //   ),
        // ),
        const Text(
          "QUIZ APP",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white)),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "START!!",
          ),
        ),
      ],
    ));
  }
}
