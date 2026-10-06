import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AnswerButton extends StatelessWidget {

  const AnswerButton({required this.answerText, required this.onTap, super.key});

  final void Function() onTap;
  final String answerText;

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: AppTheme.edgeS, horizontal: AppTheme.edgeXL,),
          backgroundColor: AppTheme.buttonBackgroundColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        child: Text(answerText, textAlign: TextAlign.center,));
  }
}
