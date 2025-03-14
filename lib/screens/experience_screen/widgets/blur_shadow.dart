import 'dart:ui';

import 'package:flutter/material.dart';

/// Widget untuk efek blur dengan radial gradient shadow
/// Digunakan untuk membuat efek depth dan fokus visual
class BlurShadow extends StatelessWidget {
  const BlurShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return RadialGradient(
          center: Alignment.topCenter,
          radius: 1,
          colors: <Color>[
            Theme.of(context).scaffoldBackgroundColor,
            Colors.transparent,
          ],
          stops: const [0.4, 0.8],
        ).createShader(bounds);
      },
      blendMode: BlendMode.dstOut, // Mengaplikasikan efek masking
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 170, // Intensitas blur horizontal
          sigmaY: 170, // Intensitas blur vertical
        ),
        child: Container(
          alignment: Alignment.center,
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
