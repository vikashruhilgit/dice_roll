import 'package:flutter/material.dart';

class CustomTest extends StatelessWidget {
  const CustomTest(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.amber,
        fontSize: 28,
      ),
    );
  }
}
