import 'package:flutter/material.dart';

/// Item individual untuk menampilkan:
/// - Nilai statistik (angka)
/// - Label deskripsi
class StatItem extends StatelessWidget {
  final String value;
  final String label;

  const StatItem({super.key, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).dividerColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Theme.of(context).dividerColor,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
