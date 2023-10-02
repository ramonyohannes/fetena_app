import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final List questions;
  final int questionIndex;

  const Questions(this.questions, this.questionIndex, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        questions[questionIndex]["question"],
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
