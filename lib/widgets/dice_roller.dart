import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_learning/widgets/custom_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 1;

  void rollDice() {
    int diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 14),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: const EdgeInsets.all(18.0)),
          child: const CustomText('Roll Dice'),
        ),
      ],
    );
  }
}
