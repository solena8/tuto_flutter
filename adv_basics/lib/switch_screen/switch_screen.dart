import 'package:adv_basics/switch_screen/switch_screen_cubit.dart';
import 'package:adv_basics/switch_screen/switch_screen_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../question_screen/question_screen_view.dart';
import '../results_screen/result_screen_view.dart';
import '../start_screen/start_screen_view.dart';


class SwitchScreen extends StatelessWidget {
  const SwitchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SwitchScreenCubit>(
      create: (context) => SwitchScreenCubit(),
      child: BlocBuilder<SwitchScreenCubit, SwitchScreenState>(
        builder: (context, state) {

          return state.when(
            startScreen: () {
              return StartScreenView(context.read<SwitchScreenCubit>().startQuiz);
            },
            questionScreen: () {
              return QuestionScreenView(onSelectAnswer: context.read<SwitchScreenCubit>().chooseAnswer);
            },
            resultScreen: (finalAnswers) {
              return ResultScreenView(
                restartQuiz: context.read<SwitchScreenCubit>().restartQuiz,
                chosenAnswers: finalAnswers,
              );
            },
          );
        },
      ),
    );
  }
}


