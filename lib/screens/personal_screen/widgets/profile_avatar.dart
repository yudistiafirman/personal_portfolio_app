import 'package:flutter/material.dart';

/// Widget untuk menampilkan avatar profil
class ProfileAvatar extends StatelessWidget {
  final String imagePath;

  const ProfileAvatar({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 120,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).dividerColor,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
