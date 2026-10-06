import 'package:adv_basics/results_screen/result_cubit.dart';
import 'package:adv_basics/results_screen/result_state.dart';
import 'package:adv_basics/startButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/results_screen/questions_summary.dart';

// Cubit permet à un écran dynamique d'être un stateless widget
class ResultScreen extends StatelessWidget {
  const ResultScreen({
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
      // create donne viie au cubit, context précis eou il est dans l'arbre à widget
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
                  margin: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'You have answered $numCorrectQuestions out of $numTotalQuestions questions correctly',
                        style: GoogleFonts.lato(
                          color: const Color.fromARGB(255, 201, 153, 251),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      QuestionSummary(result),
                      const SizedBox(height: 30),
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
