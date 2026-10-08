// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$QuestionsListState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsListState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionsListState()';
}


}

/// @nodoc
class $QuestionsListStateCopyWith<$Res>  {
$QuestionsListStateCopyWith(QuestionsListState _, $Res Function(QuestionsListState) __);
}


/// Adds pattern-matching-related methods to [QuestionsListState].
extension QuestionsListStatePatterns on QuestionsListState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( QuestionsListInitial value)?  initial,TResult Function( QuestionsListLoading value)?  loading,TResult Function( QuestionsListSuccess value)?  success,required TResult orElse(),}){
final _that = this;
switch (_that) {
case QuestionsListInitial() when initial != null:
return initial(_that);case QuestionsListLoading() when loading != null:
return loading(_that);case QuestionsListSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( QuestionsListInitial value)  initial,required TResult Function( QuestionsListLoading value)  loading,required TResult Function( QuestionsListSuccess value)  success,}){
final _that = this;
switch (_that) {
case QuestionsListInitial():
return initial(_that);case QuestionsListLoading():
return loading(_that);case QuestionsListSuccess():
return success(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( QuestionsListInitial value)?  initial,TResult? Function( QuestionsListLoading value)?  loading,TResult? Function( QuestionsListSuccess value)?  success,}){
final _that = this;
switch (_that) {
case QuestionsListInitial() when initial != null:
return initial(_that);case QuestionsListLoading() when loading != null:
return loading(_that);case QuestionsListSuccess() when success != null:
return success(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,required TResult orElse(),}) {final _that = this;
switch (_that) {
case QuestionsListInitial() when initial != null:
return initial();case QuestionsListLoading() when loading != null:
return loading();case QuestionsListSuccess() when success != null:
return success();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,}) {final _that = this;
switch (_that) {
case QuestionsListInitial():
return initial();case QuestionsListLoading():
return loading();case QuestionsListSuccess():
return success();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,}) {final _that = this;
switch (_that) {
case QuestionsListInitial() when initial != null:
return initial();case QuestionsListLoading() when loading != null:
return loading();case QuestionsListSuccess() when success != null:
return success();case _:
  return null;

}
}

}

/// @nodoc


class QuestionsListInitial implements QuestionsListState {
  const QuestionsListInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsListInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionsListState.initial()';
}


}




/// @nodoc


class QuestionsListLoading implements QuestionsListState {
  const QuestionsListLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsListLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionsListState.loading()';
}


}




/// @nodoc


class QuestionsListSuccess implements QuestionsListState {
  const QuestionsListSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuestionsListSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'QuestionsListState.success()';
}


}




// dart format on
