import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onTap});
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Start SCreen"),
          ElevatedButton(onPressed: onTap, child: const Text("START QUIZ"))
        ],
      ),
    );
  }
}
