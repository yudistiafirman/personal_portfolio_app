import 'package:flutter/material.dart';
import 'package:porfolio_app/constant/skill_data.dart';
import 'package:porfolio_app/screens/skill_screen/widgets/widgets.dart';

/// Screen utama yang menampilkan daftar skill technical dalam layout scrollable
class SkillScreen extends StatelessWidget {
  const SkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomScrollView(
            slivers: [
              SkillHeader(),
              SkillList(skills: skillData),
              SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
        ),
      ),
    );
  }
}
