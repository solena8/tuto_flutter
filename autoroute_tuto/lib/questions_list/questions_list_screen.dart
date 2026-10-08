import 'package:auto_route/auto_route.dart';
import 'package:autoroute_tuto/questions_list/questions_list_cubit.dart';
import 'package:autoroute_tuto/questions_list/questions_list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../router/app_router.gr.dart';
import '../data/questions.dart';
import '../theme/theme.dart';

@RoutePage()
class QuestionsListScreen extends StatelessWidget {
  const QuestionsListScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider<QuestionsListCubit>(
      create: (context) =>
      QuestionsListCubit()..load(),
      child: BlocBuilder<QuestionsListCubit, QuestionsListState>(
        builder: (context, state) {
          return state.when(
            initial: () => Center(child: Text('Initiating', style: AppTheme.defaultFont,),),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            success: () {
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
            },

          );
        },
      ),
    );
  }
}
