// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:autoroute_tuto/models/quiz_question.dart' as _i6;
import 'package:autoroute_tuto/question_detail_screen.dart' as _i1;
import 'package:autoroute_tuto/questions_list_screen.dart' as _i2;
import 'package:autoroute_tuto/quiz_screen.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i5;

/// generated route for
/// [_i1.QuestionDetailScreen]
class QuestionDetailRoute extends _i4.PageRouteInfo<QuestionDetailRouteArgs> {
  QuestionDetailRoute({
    _i5.Key? key,
    required _i6.QuizQuestion question,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         QuestionDetailRoute.name,
         args: QuestionDetailRouteArgs(key: key, question: question),
         initialChildren: children,
       );

  static const String name = 'QuestionDetailRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuestionDetailRouteArgs>();
      return _i1.QuestionDetailScreen(key: args.key, question: args.question);
    },
  );
}

class QuestionDetailRouteArgs {
  const QuestionDetailRouteArgs({this.key, required this.question});

  final _i5.Key? key;

  final _i6.QuizQuestion question;

  @override
  String toString() {
    return 'QuestionDetailRouteArgs{key: $key, question: $question}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QuestionDetailRouteArgs) return false;
    return key == other.key && question == other.question;
  }

  @override
  int get hashCode => key.hashCode ^ question.hashCode;
}

/// generated route for
/// [_i2.QuestionsListScreen]
class QuestionsListRoute extends _i4.PageRouteInfo<void> {
  const QuestionsListRoute({List<_i4.PageRouteInfo>? children})
    : super(QuestionsListRoute.name, initialChildren: children);

  static const String name = 'QuestionsListRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.QuestionsListScreen();
    },
  );
}

/// generated route for
/// [_i3.QuizScreen]
class QuizRoute extends _i4.PageRouteInfo<void> {
  const QuizRoute({List<_i4.PageRouteInfo>? children})
    : super(QuizRoute.name, initialChildren: children);

  static const String name = 'QuizRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.QuizScreen();
    },
  );
}
