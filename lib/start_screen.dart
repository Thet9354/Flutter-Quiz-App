import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:google_fonts/google_fonts.dart';



class StartingScreen extends StatelessWidget {
  const StartingScreen(this.startQuiz, {Key? key}) : super(key: key);

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 255 , 255, 255),
        ),
        const SizedBox(
          height: 50,
        ),
         Text(
          'Learn Flutter the fun way!',
          style: GoogleFonts.lato(
            color: const Color.fromARGB(255, 237, 223, 252),
            fontSize: 24,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz!'))
      ],
    );
  }
}
