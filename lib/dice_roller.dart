import 'package:flutter/material.dart';
import 'package:first_app/style_text.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  // no build method
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });
  }

  int currentDice = 6;

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDice.png',
          width: 200,
        ),
        const SizedBox(
          // non bellissimo
          height: 50,
        ),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(10), backgroundColor: Colors.green),
          child: const StyleText(
            outputText: 'Roll',
          ),
        ),
      ],
    );
  }
}
