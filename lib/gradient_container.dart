import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.child,
    required this.fromColor,
    required this.toColor,
  });

  final Widget child;
  final Color fromColor;
  final Color toColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            fromColor,
            toColor,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
