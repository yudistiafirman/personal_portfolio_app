import 'package:flutter/material.dart';

/// Widget untuk menampilkan teks informasi profil:

class ProfileTextInfo extends StatelessWidget {
  final String name;
  final String title;

  const ProfileTextInfo({super.key, required this.name, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: Theme.of(
            context,
          ).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
