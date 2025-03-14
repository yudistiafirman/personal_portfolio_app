import 'package:flutter/material.dart';

/// Container untuk ikon dengan:
/// - Background berbentuk rounded rectangle
/// - Warna sesuai tema
class IconContainer extends StatelessWidget {
  final IconData icon;

  const IconContainer({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(icon, color: Theme.of(context).dividerColor, size: 28),
    );
  }
}
