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
  final List questions = [
    {
      "question": "What is your favorite food?",
      "answer": ["Doro", "Firfir", "Tbs", "Kitfo"]
    },
    {
      "question": "What is your favorite drink?",
      "answer": ["Ambo", "Water", "Beer", "Wine"]
    },
    {
      "question": "Who is your favorite dog?",
      "answer": ["Mika", "Poni", "Amigo", "Lucy"]
    },
  ];

  int questionIndex = 0;

  void changeQuestionIndex() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void restartQuestion() {
    setState(() {
      questionIndex = 0;
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
          ? Restart(restartQuestion)
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
