import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function changeQuestionIndex;

  const Answer(this.questions, this.questionIndex, this.changeQuestionIndex,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...questions[questionIndex]["answer"].map((questionText) {
          return SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => changeQuestionIndex(),
              child: Text(
                questionText,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
