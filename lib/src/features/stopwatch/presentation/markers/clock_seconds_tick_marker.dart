import 'dart:math';

import 'package:flutter/material.dart';

class ClockSecondsTickMarker extends StatelessWidget {
  const ClockSecondsTickMarker({
    super.key,
    required this.seconds,
    required this.radius,
  });

  final int seconds;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final color = seconds % 5 == 0
        ? const Color(0xFF0CCC13)
        : Colors.white.withOpacity(0.5);
    const width = 2.0;
    const height = 12.0;

    return Transform(
      transform: Matrix4.identity()
        ..translate(-width / 2, -height / 2, 0.0) // center to origin
        ..rotateZ(2 * pi * (seconds / 60.0))
        ..translate(0.0, radius - height / 2, 0.0),
      child: Container(
        width: width,
        height: height,
        color: color,
      ),
    );
  }
}
