import 'package:adv_basics/question_screen/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions.dart';

import '../theme/theme.dart';

class QuestionScreenView extends StatefulWidget {
  const QuestionScreenView({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreenView> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionScreenView> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(AppTheme.edgeXL),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: AppTheme.defaultFont.copyWith(
                color: AppTheme.textColor,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height : AppTheme.sizedboxM),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return Padding(
                padding: const EdgeInsets.only(bottom: AppTheme.edgeS),
                child: AnswerButton(answerText: answer, onTap: () {
                  answerQuestion(answer);
                }),
              );
            }),
          ],
        ),
      ),
    );
  }
}
