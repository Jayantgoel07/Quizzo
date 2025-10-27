import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/flutter_logo.png',
            width: 300,
            // color: Color.fromARGB(170, 167, 167, 167),
          ),

          // Opacity(
          //   opacity: 0.7,
          //   child: Image.asset('assets/images/flutter_logo.png'),
          // ),
          const SizedBox(
            height: 50.0,
          ),
          const Text(
            "Let's Learn Flutter!",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 50.0,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.not_started_outlined),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
