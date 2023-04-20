import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: AskMeAnything(),
    ),
  );
}

class AskMeAnything extends StatelessWidget {
  const AskMeAnything({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Ask Me Anything'),
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballAnswer = 1;

  void setBallAnswer() {
    ballAnswer = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        child: Image.asset('images/ball$ballAnswer.png'),
        onPressed: () => {
          setState(() {
            setBallAnswer();
          })
        },
      ),
    );
  }
}
