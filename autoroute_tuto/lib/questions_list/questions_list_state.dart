import 'package:freezed_annotation/freezed_annotation.dart';
part 'questions_list_state.freezed.dart';

@freezed
class QuestionsListState with _$QuestionsListState {

  const factory QuestionsListState.initial() = QuestionsListInitial;
  const factory QuestionsListState.loading() = QuestionsListLoading;
  const factory QuestionsListState.success() = QuestionsListSuccess;
}