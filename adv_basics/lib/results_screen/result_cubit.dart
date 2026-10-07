import 'package:adv_basics/results_screen/result_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adv_basics/data/questions.dart';

// classe cubit qui va gérer uniquement des états de type ResultState
class ResultCubit extends Cubit<ResultState> {
  ResultCubit({required this.chosenAnswers})
      // dès que l'écran se crée, l'état est sur loading
      // l'argument pris par le constructeur de super est l'état initial
      : super(const ResultState.loading());

  final List<String> chosenAnswers;

  Future<void> getResult() async {
    // simulation de chargement pour mieux observer l'apparition de l'état initial et le changement
    await Future.delayed(const Duration(seconds: 2));

    final List<Map<String, Object>> result = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      result.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }

    // emit met à jour l'état ResultState à loaded et pass en argument result
    emit(ResultState.loaded(result));
  }
}
