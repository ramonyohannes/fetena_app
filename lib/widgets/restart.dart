import 'package:flutter/material.dart';

class Restart extends StatelessWidget {
  final Function restartQuiz;
  final int totalScore;
  const Restart(this.restartQuiz, this.totalScore, {super.key});

  String scoreText(int score) {
    if (score <= 3 && score <= 6) {
      return 'Excellent';
    } else if (score >= 6 && score < 10) {
      return 'Good, Keep it up!';
    } else {
      return 'Needs Improvement';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            scoreText(totalScore),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () => restartQuiz(),
            child: const Text("Restart Quiz"),
          ),
        ],
      ),
    );
  }
}
