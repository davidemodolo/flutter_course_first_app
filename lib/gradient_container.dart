import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const Alignment staAlignment = Alignment.topLeft;
const Alignment endAlignment = Alignment.bottomRight;
// Alignment? endAlignment -> typeof Alignment or Null;
// final var -> const after executing, const var -> const at compile time

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key, required this.color1, required this.color2});

  const GradientContainer.green({super.key})
      : color1 = Colors.green,
        color2 = Colors.greenAccent;

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: staAlignment,
          end: endAlignment,
        ),
      ),
      //child: const Center(child: StyleText(outputText: 'Hello World!')),
      child: const Center(child: DiceRoller()),
    );
  }
}
