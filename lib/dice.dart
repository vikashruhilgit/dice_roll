import "dart:math";
import 'package:flutter/material.dart';

final randomized = Random();

class Dart extends StatefulWidget {
  const Dart({super.key});

  @override
  State<Dart> createState() {
    return _DartState();
  }
}

class _DartState extends State<Dart> {
  var activeDice = 1;
  var turn = 10;

  void onPressed() {
    var randVal = randomized.nextInt(6) + 1;
    var turnVal = randomized.nextInt(10) + 5;
    setState(() {
      activeDice = randVal;
      turn = turnVal;
    });
  }

  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedRotation(
          turns: turn.toDouble(),
          duration: const Duration(seconds: 2),
          child: Image.asset(
            'assets/images/dice-$activeDice.png',
            width: 200,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 18)),
          onPressed: onPressed,
          child: const Text('Play'),
        ),
      ],
    );
  }
}
