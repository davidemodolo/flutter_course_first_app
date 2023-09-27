import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  const StyleText({super.key, this.outputText = ''});

  final String outputText;

  @override
  Widget build(context) {
    return Text(
      outputText,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
