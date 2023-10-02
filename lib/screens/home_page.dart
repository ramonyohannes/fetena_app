import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                questions[questionIndex]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ...questions[questionIndex]["answer"].map(
              (questionText) {
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
              },
            )
          ],
        ),
      ),
    );
  }
}
