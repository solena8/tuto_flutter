import 'package:adv_basics/change_observer.dart';
import 'package:adv_basics/quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // surveillance globale des changements d'état de cubit
  Bloc.observer = const ChangeObserver();
  runApp(
    const Quiz()
  );
}
