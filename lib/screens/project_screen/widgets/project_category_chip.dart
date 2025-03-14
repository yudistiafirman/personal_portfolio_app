import 'package:flutter/material.dart';
import 'package:porfolio_app/models/project_category.dart';

class CategoryChip extends StatelessWidget {
  final ProjectCategory category;
  final bool isSelected;

  const CategoryChip({
    super.key,
    required this.category,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isSelected ? Theme.of(context).dividerColor : null,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Center(
          child: Text(
            category.name,
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color:
                  isSelected ? Theme.of(context).scaffoldBackgroundColor : null,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
