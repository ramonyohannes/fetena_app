import 'package:flutter/material.dart';

import '../widgets/questions.dart';
import '../widgets/answer.dart';
import '../widgets/restart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int totalScore = 0;

  final List questions = [
    {
      "question": "What is your favorite food?",
      "answer": [
        {"text": "Doro", "score": 1},
        {"text": "Firfir", "score": 2},
        {"text": "Tbs", "score": 3},
        {"text": "Kitfo", "score": 4}
      ]
    },
    {
      "question": "What is your favorite drink?",
      "answer": [
        {"text": "Ambo", "score": 1},
        {"text": "Water", "score": 2},
        {"text": "Beer", "score": 3},
        {"text": "Wine", "score": 4}
      ]
    },
    {
      "question": "Who is your favorite dog?",
      "answer": [
        {"text": "Mika", "score": 1},
        {"text": "Poni", "score": 1},
        {"text": "Amigo", "score": 3},
        {"text": "Lucy", "score": 4}
      ]
    },
  ];

  void changeQuestionIndex(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      totalScore = totalScore + score;
    });
  }

  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white10,
        elevation: 0.1,
        title: const Text(
          "Fetena App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: questionIndex >= questions.length
          ? Restart(restartQuiz, totalScore)
          : Center(
              child: Column(
                children: [
                  Questions(questions, questionIndex),
                  Answer(questions, questionIndex, changeQuestionIndex),
                ],
              ),
            ),
    );
  }
}
