import 'package:flutter/material.dart';

/// Simple not found screen used for 404 errors

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('404 - Page not found!')),
    );
  }
}
