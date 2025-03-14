import 'package:flutter/material.dart';

/// Widget untuk menambahkan space dalam sliver layout
/// Bisa digunakan untuk vertical atau horizontal spacing
class SliverSpace extends StatelessWidget {
  final double size;
  final Axis direction;

  const SliverSpace(this.size, {super.key, this.direction = Axis.vertical});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: direction == Axis.vertical ? size : null,
        width: direction == Axis.horizontal ? size : null,
      ),
    );
  }
}
