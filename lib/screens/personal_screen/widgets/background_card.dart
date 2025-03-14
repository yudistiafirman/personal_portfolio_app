import 'package:flutter/material.dart';

/// Card dengan efek shadow untuk background section informasi
class BackgroundCard extends StatelessWidget {
  final Widget child;

  const BackgroundCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 55),
      child: Container(
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: child,
      ),
    );
  }
}
