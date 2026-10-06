import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  const GradientContainer.purple({super.key})
    : firstColor = Colors.purple,
      secondColor = Colors.pink;

  final Color firstColor;
  final Color secondColor;


  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstColor, secondColor],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        // Center ne peut avoir qu'un child donc on ajoute colum
        child:DiceRoller(),
      ),
    );
  }
}
