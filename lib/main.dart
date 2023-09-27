import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  //const color1 = Color.fromARGB(255, 0, 35, 2);
  // const color2 = Color.fromARGB(255, 1, 75, 0);
  runApp(
    const MaterialApp(
      home: Scaffold(
        //body: GradientContainer(color1: color1, color2: color2,
        body: GradientContainer.green(),
      ),
    ),
  );
}
