import 'package:flutter/material.dart';
import 'package:porfolio_app/models/skill.dart';
import 'package:porfolio_app/screens/skill_screen/widgets/skill_item.dart';

/// render list skill
class SkillList extends StatelessWidget {
  final List<Skill> skills;
  const SkillList({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      sliver: SliverList.separated(
        itemCount: skills.length,
        separatorBuilder: (context, index) => const SizedBox(height: 20),
        itemBuilder: (context, index) => SkillItem(skill: skills[index]),
      ),
    );
  }
}
