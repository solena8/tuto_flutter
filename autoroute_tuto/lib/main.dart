import 'package:autoroute_tuto/quiz_app.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'change_observer.dart';
import 'router/app_router.dart';

void main() {
  Bloc.observer = const ChangeObserver();
  runApp(const QuizApp());
}