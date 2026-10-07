import 'package:freezed_annotation/freezed_annotation.dart';
part 'switch_screen_state.freezed.dart';

@freezed
class SwitchScreenState with _$SwitchScreenState {
  const factory SwitchScreenState.startScreen() = StartScreen;
  const factory SwitchScreenState.questionScreen() = QuestionScreen;
  const factory SwitchScreenState.resultScreen({required List<String> answers}) = ResultScreen;
}
