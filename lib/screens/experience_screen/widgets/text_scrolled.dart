import 'package:flutter/material.dart';
import 'package:text_scroll/text_scroll.dart';

class TextScrolled extends StatelessWidget {
  final String text;
  final TextScrollMode mode;
  final TextDirection textDirection;
  final double velocity;

  const TextScrolled(
    this.text, {
    super.key,
    this.mode = TextScrollMode.endless,
    this.textDirection = TextDirection.ltr,
    this.velocity = 180,
  });

  @override
  Widget build(BuildContext context) {
    return TextScroll(
      text.toUpperCase(),
      mode: mode,
      velocity: Velocity(pixelsPerSecond: Offset(velocity, 0)),
      fadedBorder: true,

      textDirection: textDirection,
      style: Theme.of(context).textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w900,
        fontSize: 68,
        letterSpacing: 6,
        height: 1.4,
        overflow: TextOverflow.visible, // 7. Pastikan text bisa overflow
      ),
      selectable: false,
    );
  }
}
