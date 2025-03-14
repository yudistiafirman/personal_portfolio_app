import 'package:flutter/material.dart';
import 'package:porfolio_app/constant/profile_data.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/widgets.dart';

/// Screen utama yang menampilkan profil pengguna dengan:
/// - Foto profil
/// - Informasi kontak
/// - Statistik pencapaian
class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            ProfileHeader(profile: profileData),
            PersonalInfoSection(profile: profileData),
          ],
        ),
      ),
    );
  }
}
