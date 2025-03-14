import 'package:flutter/material.dart';
import 'package:porfolio_app/models/profile.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/stat_item.dart';

/// Card untuk menampilkan statistik dalam bentuk:
/// - Pengalaman kerja
/// - Bahasa pemrograman utama
/// - Total proyek
class StatsCard extends StatelessWidget {
  final Profile profile;

  const StatsCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 110,
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:
              Theme.of(context).brightness == Brightness.light
                  ? Theme.of(context).scaffoldBackgroundColor
                  : Theme.of(context).listTileTheme.tileColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 10, spreadRadius: 5),
          ],
        ),
        child: Row(
          children: [
            StatItem(value: "${profile.totalExperience}+", label: "Experience"),
            _buildCustomVerticalDivider(context),
            StatItem(
              value: profile.programmingLanguage,
              label: "Programming\nLanguage",
            ),
            _buildCustomVerticalDivider(context),
            StatItem(
              value: profile.totalProjects.toString(),
              label: "Projects",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomVerticalDivider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: 3,
        decoration: BoxDecoration(
          color: Theme.of(context).dividerColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
