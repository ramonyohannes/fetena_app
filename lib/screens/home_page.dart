import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "What is your favorite food?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button 1"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button 1"),
            )
          ],
        ),
      ),
    );
  }
}
