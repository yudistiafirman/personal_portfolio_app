import 'package:flutter/material.dart';
import 'package:porfolio_app/models/profile.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/profile_avatar.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/profile_text_info.dart';

/// Header profil yang berisi:
/// - Avatar pengguna
/// - Nama dan jabatan
class ProfileHeader extends StatelessWidget {
  final Profile profile;

  const ProfileHeader({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ProfileAvatar(imagePath: profile.profilePicture),
            ProfileTextInfo(name: profile.fullName, title: profile.title),
          ],
        ),
      ),
    );
  }
}
