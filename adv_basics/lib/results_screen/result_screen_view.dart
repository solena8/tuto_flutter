import 'package:adv_basics/results_screen/result_cubit.dart';
import 'package:adv_basics/results_screen/result_state.dart';
import 'package:adv_basics/start_screen/startButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen/questions_summary.dart';

import '../theme/theme.dart';

// Cubit permet à un écran dynamique d'être un stateless widget
class ResultScreenView extends StatelessWidget {
  const ResultScreenView({
    super.key,
    required this.restartQuiz,
    required this.chosenAnswers,
  });

  final void Function() restartQuiz;
  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    // blocprovider crée le cubit et le rend dispo pour les widgets enfants
    // Ici il gerera un cubit de type ResultCubit
    return BlocProvider<ResultCubit>(
      // create donne vie au cubit, context précis eou il est dans l'arbre à widget
      create: (context) =>
          // ici l'état loading est initialisé, le cubit st crée et immediatement après la méthode est appellée
          ResultCubit(chosenAnswers: chosenAnswers)..getResult(),
      // Le blocbuilder est enfant de BlocProvider, quand BlocBuilder appelle emit il intercepte le nouvel état et force la fonction builder à s'éxecuter à nouveau
      child: BlocBuilder<ResultCubit, ResultState>(
        builder: (context, state) {
          // freeze permet maybewhen : affichage d'un widget selon 1 état, peu importe les autres états possibles
          return state.maybeWhen(
            loaded: (result) {
              final numTotalQuestions = questions.length;
              final numCorrectQuestions = result.where((data) {
                return data['user_answer'] == data['correct_answer'];
              }).length;

              return SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.all(AppTheme.edgeXL),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'You have answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
                        style: AppTheme.defaultFont.copyWith(
                          color: AppTheme.textColor,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: AppTheme.sizedboxM),
                      QuestionSummary(result),
                      const SizedBox(height: AppTheme.sizedboxM),
                      StartButton(restartQuiz, 'Restart Quiz'),
                    ],
                  ),
                ),
              );
            },
            // tous les autres états donneront cet affichage (autre état ou erreur)
            orElse: () => const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
