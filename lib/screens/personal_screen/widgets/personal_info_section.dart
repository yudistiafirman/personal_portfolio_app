import 'package:flutter/material.dart';
import 'package:porfolio_app/models/profile.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/background_card.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/contact_info_list.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/stats_card.dart';

/// Section untuk menampilkan:
/// - Latar belakang card
/// - Daftar kontak
/// - Statistik pencapaian
class PersonalInfoSection extends StatelessWidget {
  final Profile profile;

  const PersonalInfoSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Stack(
        children: [
          BackgroundCard(
            child: Column(
              children: [
                const SizedBox(height: 80),
                ContactInfoList(profile: profile),
              ],
            ),
          ),
          StatsCard(profile: profile),
        ],
      ),
    );
  }
}
