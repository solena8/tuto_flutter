// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'switch_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SwitchScreenState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SwitchScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SwitchScreenState()';
  }
}

/// @nodoc
class $SwitchScreenStateCopyWith<$Res> {
  $SwitchScreenStateCopyWith(
      SwitchScreenState _, $Res Function(SwitchScreenState) __);
}

/// Adds pattern-matching-related methods to [SwitchScreenState].
extension SwitchScreenStatePatterns on SwitchScreenState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartScreen value)? startScreen,
    TResult Function(QuestionScreen value)? questionScreen,
    TResult Function(ResultScreen value)? resultScreen,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen() when startScreen != null:
        return startScreen(_that);
      case QuestionScreen() when questionScreen != null:
        return questionScreen(_that);
      case ResultScreen() when resultScreen != null:
        return resultScreen(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartScreen value) startScreen,
    required TResult Function(QuestionScreen value) questionScreen,
    required TResult Function(ResultScreen value) resultScreen,
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen():
        return startScreen(_that);
      case QuestionScreen():
        return questionScreen(_that);
      case ResultScreen():
        return resultScreen(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartScreen value)? startScreen,
    TResult? Function(QuestionScreen value)? questionScreen,
    TResult? Function(ResultScreen value)? resultScreen,
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen() when startScreen != null:
        return startScreen(_that);
      case QuestionScreen() when questionScreen != null:
        return questionScreen(_that);
      case ResultScreen() when resultScreen != null:
        return resultScreen(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startScreen,
    TResult Function()? questionScreen,
    TResult Function(List<String> answers)? resultScreen,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen() when startScreen != null:
        return startScreen();
      case QuestionScreen() when questionScreen != null:
        return questionScreen();
      case ResultScreen() when resultScreen != null:
        return resultScreen(_that.answers);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startScreen,
    required TResult Function() questionScreen,
    required TResult Function(List<String> answers) resultScreen,
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen():
        return startScreen();
      case QuestionScreen():
        return questionScreen();
      case ResultScreen():
        return resultScreen(_that.answers);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startScreen,
    TResult? Function()? questionScreen,
    TResult? Function(List<String> answers)? resultScreen,
  }) {
    final _that = this;
    switch (_that) {
      case StartScreen() when startScreen != null:
        return startScreen();
      case QuestionScreen() when questionScreen != null:
        return questionScreen();
      case ResultScreen() when resultScreen != null:
        return resultScreen(_that.answers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class StartScreen implements SwitchScreenState {
  const StartScreen();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StartScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SwitchScreenState.startScreen()';
  }
}

/// @nodoc

class QuestionScreen implements SwitchScreenState {
  const QuestionScreen();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is QuestionScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'SwitchScreenState.questionScreen()';
  }
}

/// @nodoc

class ResultScreen implements SwitchScreenState {
  const ResultScreen({required List<String> answers}) : _answers = answers;

  final List<String> _answers;
  List<String> get answers {
    if (_answers is EqualUnmodifiableListView) return _answers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  /// Create a copy of SwitchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultScreenCopyWith<ResultScreen> get copyWith =>
      _$ResultScreenCopyWithImpl<ResultScreen>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultScreen &&
            const DeepCollectionEquality().equals(other.answers, _answers));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_answers));
  }

  @override
  String toString() {
    return 'SwitchScreenState.resultScreen(answers: $answers)';
  }
}

/// @nodoc
abstract mixin class $ResultScreenCopyWith<$Res>
    implements $SwitchScreenStateCopyWith<$Res> {
  factory $ResultScreenCopyWith(
          ResultScreen value, $Res Function(ResultScreen) _then) =
      _$ResultScreenCopyWithImpl;
  @useResult
  $Res call({List<String> answers});
}

/// @nodoc
class _$ResultScreenCopyWithImpl<$Res> implements $ResultScreenCopyWith<$Res> {
  _$ResultScreenCopyWithImpl(this._self, this._then);

  final ResultScreen _self;
  final $Res Function(ResultScreen) _then;

  /// Create a copy of SwitchScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? answers = null,
  }) {
    return _then(ResultScreen(
      answers: null == answers
          ? _self._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
