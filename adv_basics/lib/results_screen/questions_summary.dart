import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../theme/theme.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppTheme.sizedboxXXL,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            Color answerColors = data['user_answer'] == data['correct_answer']
                ? Colors.green
                : Colors.red;
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: answerColors
                  ),
                  margin: const EdgeInsets.only(right: AppTheme.edgeMedium, top: AppTheme.edgeSmall),
                  child: Center(
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: AppTheme.defaultFont.copyWith(
                          color: AppTheme.summaryQuestionTextColor,
                        ),
                      ),
                      SizedBox(height: AppTheme.edgeSmall),
                      Text(data['correct_answer'] as String,
                          style: AppTheme.defaultFont),
                      Text(
                        data['user_answer'] as String,
                        style: AppTheme.defaultFont.copyWith(
                          color: answerColors,
                        ),
                      ),
                      SizedBox(height: AppTheme.edgeLarge)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
