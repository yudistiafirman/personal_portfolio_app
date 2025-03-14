import 'package:flutter/material.dart';
import 'package:porfolio_app/models/project.dart';
import 'package:porfolio_app/screens/project_screen/widgets/project_card.dart';

/// List proyek dalam bentuk sliver list
class ProjectsList extends StatelessWidget {
  final List<Project> projects;

  const ProjectsList({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: projects.length,
      itemBuilder:
          (context, index) => ProjectCard(
            project: projects[index],
            isLast: index == projects.length - 1,
          ),
    );
  }
}
