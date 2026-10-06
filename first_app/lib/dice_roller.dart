import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // permet de centrer ce qui est dans column verticalement
      children: [
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        // a la place du padding plus bas on pourrait incruster une const SizedBox(height: 20), ici
        TextButton(
          // Plusieurs types de boutons, celui ci ne sera qu'un texte pressable
          onPressed: rollDice,
          // On appelle la méthode déclarée plus haut
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            // .all ajoute padding partout, .only on choisit l'endroit et la valeur
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
