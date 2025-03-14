import 'package:flutter/material.dart';

/// Membangun header section dengan:
/// - Judul utama 'My Tech Stack'
/// - Deskripsi penjelasan tentang skill set
class SkillHeader extends StatelessWidget {
  const SkillHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Tech Stack',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'A showcase of the tools and frameworks I work with...',
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
