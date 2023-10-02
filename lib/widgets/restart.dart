import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartQuiz;
  const Restart(this.restartQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => restartQuiz(),
        child: const Text("Restart Quiz"),
      ),
    );
  }
}
