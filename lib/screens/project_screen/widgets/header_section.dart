import 'package:flutter/material.dart';

/// Header section dengan judul dan deskripsi
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Judul utama
          Text(
            'Project Portfolio',
            style: Theme.of(
              context,
            ).textTheme.headlineLarge!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Deskripsi proyek
          Text(
            'Discover a collection of my meticulously crafted applications...',
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
