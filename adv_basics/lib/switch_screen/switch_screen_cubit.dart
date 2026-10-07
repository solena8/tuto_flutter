import 'package:adv_basics/switch_screen/switch_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:adv_basics/data/questions.dart';

class SwitchScreenCubit extends Cubit<SwitchScreenState> {
  SwitchScreenCubit() : super(const SwitchScreenState.startScreen());

  final List<String> _selectedAnswers = [];

  void startQuiz() {
    _selectedAnswers.clear();
    emit(const SwitchScreenState.questionScreen());
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      emit(SwitchScreenState.resultScreen(answers: List.from(_selectedAnswers)));
    }
  }

  void restartQuiz() {
    _selectedAnswers.clear();
    emit(const SwitchScreenState.startScreen());
  }
}
