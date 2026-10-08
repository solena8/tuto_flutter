import 'package:autoroute_tuto/questions_list/questions_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsListCubit extends Cubit<QuestionsListState> {
  QuestionsListCubit() : super(const QuestionsListState.initial());

  Future<void> load() async {
    await Future.delayed(const Duration(seconds: 2));
    emit(QuestionsListState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emit(QuestionsListState.success());
  }
}
