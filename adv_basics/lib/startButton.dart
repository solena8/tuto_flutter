import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.action, this.text, {super.key});

  final void Function() action;
  final String text;

  @override
  Widget build(context) {
    return OutlinedButton.icon(
      onPressed: action,
      style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
      icon: const Icon(Icons.arrow_right_alt),
      label: Text(text),
    );
  }
}
