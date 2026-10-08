import 'package:auto_route/auto_route.dart';
import 'package:autoroute_tuto/app_router.gr.dart';
import 'package:autoroute_tuto/theme/theme.dart';
import 'package:flutter/material.dart';

@RoutePage()
class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  ElevatedButton(
            onPressed: () {
              context.router.push(QuestionsListRoute());
            },
            child: const Text('Open quiz'),
          ),
        ),
      );

  }
}