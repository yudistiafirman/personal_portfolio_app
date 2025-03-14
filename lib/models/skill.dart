import 'package:flutter/material.dart';

class Skill {
  final String title;
  final String level;
  final String iconPath;
  final Color color;
  final double scale;

  Skill({
    required this.title,
    required this.level,
    required this.iconPath,
    required this.color,
    this.scale = 1.0,
  });
}
