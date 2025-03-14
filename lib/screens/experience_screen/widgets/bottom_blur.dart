import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/experience_screen/widgets/blur_shadow.dart';

/// Widget untuk efek blur radial di bagian bawah layar
class BottomBlur extends StatelessWidget {
  const BottomBlur({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(flex: 3),
        Flexible(
          flex: 7,
          child: ClipRRect(
            child: BlurShadow(), // Komponen blur utama
          ),
        ),
      ],
    );
  }
}
