import 'package:auto_route/annotations.dart';
import 'package:autoroute_tuto/question_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/quiz_question.dart';

@RoutePage()
class QuestionDetailScreen extends StatelessWidget {
  const QuestionDetailScreen({
    super.key,
    required this.question,
  });

  final QuizQuestion question;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Détail')),
      body: Center(
        child: QuestionCard(question: question),
      ),
    );
  }
}