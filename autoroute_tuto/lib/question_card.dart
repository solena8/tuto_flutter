import 'package:auto_route/annotations.dart';
import 'package:autoroute_tuto/theme/theme.dart';
import 'package:flutter/material.dart';
import 'models/quiz_question.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final QuizQuestion question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(AppTheme.edgeM),
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.edgeL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.text,
              style: AppTheme.defaultFont.copyWith(
                color: AppTheme.textColor,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
            AppTheme.spaceM,
            for (final answer in question.answers)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppTheme.edgeS),
                child: Text(
                  answer,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}