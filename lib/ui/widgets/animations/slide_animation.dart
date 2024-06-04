import 'package:flutter/material.dart';
import 'package:task_track/ui/ui_index.dart';

class SlideAnimation extends StatelessWidget {
  final Offset begin;
  final Offset end;
  final Widget child;
  final Curve? curve;
  final int? durationMs;

  const SlideAnimation({
    super.key,
    required this.begin,
    this.end = Offset.zero,
    this.curve,
    this.durationMs,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BaseAnimation<Offset>(
      begin: begin,
      end: end,
      curve: curve,
      durationMs: durationMs,
      builder: (animation) {
        return SlideTransition(
          position: animation,
          child: child,
        );
      },
    );
  }
}
