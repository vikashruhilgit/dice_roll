import 'package:flutter/material.dart';
import 'package:roll_dice/dice.dart';
import 'package:roll_dice/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          fromColor: Color.fromARGB(255, 69, 2, 1),
          toColor: Color.fromARGB(255, 67, 11, 145),
          // child: CustomTest('Hello World!!'),
          child: Dart(),
        ),
      ),
    ),
  );
}
