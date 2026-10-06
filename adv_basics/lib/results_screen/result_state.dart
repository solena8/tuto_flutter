import 'package:freezed_annotation/freezed_annotation.dart';
part 'result_state.freezed.dart';

@freezed
class ResultState with _$ResultState {

  const factory ResultState.loading() = ResultLoading;
  const factory ResultState.loaded(List<Map<String, Object>> result,) = ResultLoaded;
}