import 'package:adv_basics/start_screen/startButton.dart';
import 'package:adv_basics/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreenView extends StatelessWidget {
  const StartScreenView(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: AppTheme.backgroundColor,
          ),
          const SizedBox(height: AppTheme.sizedboxL),
          Text(
            'Learn Flutter the fun way!',
            style: AppTheme.defaultFont.copyWith(
              color: AppTheme.textColor,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: AppTheme.sizedboxM),
          StartButton(startQuiz, 'Start Quiz')
        ],
      ),
    );
  }
}
