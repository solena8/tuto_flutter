// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResultState()';
  }
}

/// @nodoc
class $ResultStateCopyWith<$Res> {
  $ResultStateCopyWith(ResultState _, $Res Function(ResultState) __);
}

/// Adds pattern-matching-related methods to [ResultState].
extension ResultStatePatterns on ResultState {
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
    TResult Function(ResultLoading value)? loading,
    TResult Function(ResultLoaded value)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading() when loading != null:
        return loading(_that);
      case ResultLoaded() when loaded != null:
        return loaded(_that);
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
    required TResult Function(ResultLoading value) loading,
    required TResult Function(ResultLoaded value) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading():
        return loading(_that);
      case ResultLoaded():
        return loaded(_that);
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
    TResult? Function(ResultLoading value)? loading,
    TResult? Function(ResultLoaded value)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading() when loading != null:
        return loading(_that);
      case ResultLoaded() when loaded != null:
        return loaded(_that);
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
    TResult Function()? loading,
    TResult Function(List<Map<String, Object>> result)? loaded,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading() when loading != null:
        return loading();
      case ResultLoaded() when loaded != null:
        return loaded(_that.result);
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
    required TResult Function() loading,
    required TResult Function(List<Map<String, Object>> result) loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading():
        return loading();
      case ResultLoaded():
        return loaded(_that.result);
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
    TResult? Function()? loading,
    TResult? Function(List<Map<String, Object>> result)? loaded,
  }) {
    final _that = this;
    switch (_that) {
      case ResultLoading() when loading != null:
        return loading();
      case ResultLoaded() when loaded != null:
        return loaded(_that.result);
      case _:
        return null;
    }
  }
}

/// @nodoc

class ResultLoading implements ResultState {
  const ResultLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResultLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ResultState.loading()';
  }
}

/// @nodoc

class ResultLoaded implements ResultState {
  const ResultLoaded(List<Map<String, Object>> result) : _result = result;

  final List<Map<String, Object>> _result;
  List<Map<String, Object>> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultLoadedCopyWith<ResultLoaded> get copyWith =>
      _$ResultLoadedCopyWithImpl<ResultLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultLoaded &&
            const DeepCollectionEquality().equals(other.result, _result));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType, const DeepCollectionEquality().hash(_result));
  }

  @override
  String toString() {
    return 'ResultState.loaded(result: $result)';
  }
}

/// @nodoc
abstract mixin class $ResultLoadedCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory $ResultLoadedCopyWith(
          ResultLoaded value, $Res Function(ResultLoaded) _then) =
      _$ResultLoadedCopyWithImpl;
  @useResult
  $Res call({List<Map<String, Object>> result});
}

/// @nodoc
class _$ResultLoadedCopyWithImpl<$Res> implements $ResultLoadedCopyWith<$Res> {
  _$ResultLoadedCopyWithImpl(this._self, this._then);

  final ResultLoaded _self;
  final $Res Function(ResultLoaded) _then;

  /// Create a copy of ResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? result = null,
  }) {
    return _then(ResultLoaded(
      null == result
          ? _self._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Map<String, Object>>,
    ));
  }
}

// dart format on
