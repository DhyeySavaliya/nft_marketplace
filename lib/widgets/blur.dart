import 'dart:ui';
import 'package:flutter/material.dart';

class Blur extends StatelessWidget {
  const Blur({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(),
      ),
    );
  }
}
