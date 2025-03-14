import 'package:flutter/material.dart';
import 'package:porfolio_app/models/skill.dart';
import 'package:porfolio_app/screens/skill_screen/widgets/skill_item_widget.dart';

/// Widget untuk menampilkan single skill item
class SkillItem extends StatelessWidget {
  final Skill skill;

  const SkillItem({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SkillItemWidget(
        title: skill.title,
        level: skill.level,
        iconPath: skill.iconPath,
        color: skill.color,
        scale: skill.scale,
      ),
    );
  }
}
