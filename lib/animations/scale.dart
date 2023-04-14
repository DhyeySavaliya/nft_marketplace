import 'package:flutter/material.dart';

class Scale extends StatelessWidget {
  const Scale({
    Key? key,
    required this.child,
    this.begin = 0.4,
    this.end = 1,
    this.intervalStart = 0,
    this.intervalEnd = 1,
    this.duration = const Duration(milliseconds: 750),
    this.curve = Curves.fastOutSlowIn,
  }) : super(key: key);
  final double begin;
  final double end;
  final Duration duration;
  final double intervalStart;
  final double intervalEnd;
  final Curve curve;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: begin, end: end),
      duration: duration,
      curve: Interval(intervalStart, intervalEnd, curve: curve),
      child: child,
      builder: (BuildContext context, double? value, Widget? child) {
        return Transform.scale(
          scale: value!,
          child: child,
        );
      },
    );
  }
}
