import 'package:porfolio_app/models/project_category.dart';

class Project {
  final int id;
  final String name;
  final String description;
  final List<ProjectCategory> categories;
  final String assetImages;

  Project({
    required this.id,
    required this.name,
    required this.description,
    required this.categories,
    required this.assetImages,
  });
}
