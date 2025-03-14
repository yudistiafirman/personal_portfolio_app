import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:porfolio_app/models/experience.dart';
import 'package:porfolio_app/screens/experience_screen/widgets/experience_card.dart';

/// Grid layout staggered untuk menampilkan kartu pengalaman
class ExperienceGrid extends StatelessWidget {
  final List<Experience> experiences;

  const ExperienceGrid({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildListDelegate([
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, bottom: 120),
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            children: [
              const StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 1,
                child: SizedBox(),
              ),

              ...experiences.map(
                (experience) => StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.5,
                  child: ExperienceCard(experience: experience),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
