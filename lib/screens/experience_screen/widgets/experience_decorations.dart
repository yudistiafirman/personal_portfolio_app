import 'package:flutter/material.dart';

/// Dekorasi lingkaran untuk background dengan posisi responsif
class ExperienceDecorations extends StatelessWidget {
  final BuildContext context;

  const ExperienceDecorations({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        // Lingkaran besar kanan atas
        Positioned(
          right: screenSize.width * 0.05,
          top: screenSize.height * 0.05,
          child: _DecorationCircle(size: screenSize.width * 0.5),
        ),

        // Lingkaran medium tengah
        Positioned(
          right: screenSize.width * 0.5,
          top: screenSize.height * 0.4,
          child: _DecorationCircle(size: screenSize.width * 0.4),
        ),

        // Lingkaran besar kanan bawah
        Positioned(
          right: screenSize.width * 0.7,
          top: screenSize.height * 0.8,
          child: _DecorationCircle(size: screenSize.width * 0.5),
        ),
      ],
    );
  }
}

/// Komponen lingkaran dekorasi individual
class _DecorationCircle extends StatelessWidget {
  final double size;

  const _DecorationCircle({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
