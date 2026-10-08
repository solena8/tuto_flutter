import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../router/app_router.gr.dart';
import '../data/questions.dart';

@RoutePage()
class QuestionsListScreen extends StatelessWidget {
  const QuestionsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toutes les questions')),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index];
          return ListTile(
            title: Text(question.text),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {
              context.router.push(
                QuestionDetailRoute(question: question),
              );
            },
          );
        },
      ),
    );
  }
}