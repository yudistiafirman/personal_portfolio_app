import 'package:flutter/material.dart';
import 'package:porfolio_app/models/project.dart';

class ProjectCard extends StatelessWidget {
  final Project project;
  final bool isLast;

  const ProjectCard({super.key, required this.project, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          isLast
              ? const EdgeInsets.only(bottom: 110)
              : const EdgeInsets.only(bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildProjectImage(context),
          const SizedBox(height: 10),
          _buildProjectDetails(context),
        ],
      ),
    );
  }

  Widget _buildProjectImage(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        color: Theme.of(context).dividerColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(project.assetImages, fit: BoxFit.fill),
      ),
    );
  }

  Widget _buildProjectDetails(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.name,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            project.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(
              context,
            ).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
