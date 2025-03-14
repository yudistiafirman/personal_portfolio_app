import 'package:flutter/material.dart';
import 'package:porfolio_app/models/project_category.dart';
import 'package:porfolio_app/screens/project_screen/widgets/project_category_chip.dart';

/// Header kategori dengan daftar chip filter horizontal
class CategoriesHeader extends StatelessWidget {
  final List<ProjectCategory> categories;
  final int? selectedCategoryId;
  final Function(int) onCategorySelected;

  const CategoriesHeader({
    super.key,
    required this.categories,
    required this.selectedCategoryId,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 100,
      expandedHeight: 100,
      pinned: true,
      floating: true,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      surfaceTintColor: Theme.of(context).scaffoldBackgroundColor,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Judul kategori
            Text(
              "Explore",
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Horizontal list chip kategori
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return GestureDetector(
                    onTap: () => onCategorySelected(category.id),
                    child: CategoryChip(
                      category: category,
                      isSelected: category.id == selectedCategoryId,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
