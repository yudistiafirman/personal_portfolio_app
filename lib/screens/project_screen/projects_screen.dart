import 'package:flutter/material.dart';
import 'package:porfolio_app/constant/project_data.dart';
import 'package:porfolio_app/models/project.dart';
import 'package:porfolio_app/models/project_category.dart';
import 'package:porfolio_app/screens/project_screen/widgets/widgets.dart';

/// Screen utama untuk menampilkan daftar proyek dengan filter kategori
class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  int? _selectedCategoryId;
  final List<ProjectCategory> _categories = projectCategoriesData;

  @override
  void initState() {
    super.initState();
    _selectedCategoryId = _categories.isNotEmpty ? _categories.first.id : null;
  }

  /// Handle perubahan kategori yang dipilih
  void _handleCategorySelect(int categoryId) {
    setState(() => _selectedCategoryId = categoryId);
  }

  /// Daftar proyek terfilter berdasarkan kategori
  List<Project> get _filteredProjects =>
      _selectedCategoryId == null
          ? projectData
          : projectData
              .where(
                (p) => p.categories.any((c) => c.id == _selectedCategoryId),
              )
              .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: CustomScrollView(
            slivers: [
              HeaderSection(), // Widget header
              CategoriesHeader(
                // Widget kategori
                categories: _categories,
                selectedCategoryId: _selectedCategoryId,
                onCategorySelected: _handleCategorySelect,
              ),
              ProjectsList(projects: _filteredProjects), // Widget list proyek
              const SliverToBoxAdapter(child: SizedBox(height: 120)),
            ],
          ),
        ),
      ),
    );
  }
}
