import 'package:flutter/material.dart';
import 'package:porfolio_app/models/profile.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/contact_info_item.dart';

/// List vertikal untuk menampilkan informasi kontak:
/// - Email
/// - Nomor telepon
/// - Lokasi
class ContactInfoList extends StatelessWidget {
  final Profile profile;

  const ContactInfoList({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactInfoItem(icon: Icons.email, value: profile.email),
        const SizedBox(height: 15),
        ContactInfoItem(icon: Icons.phone, value: profile.phoneNumber),
        const SizedBox(height: 15),
        ContactInfoItem(
          icon: Icons.pin_drop_outlined,
          value: "${profile.city} - ${profile.country}",
        ),
      ],
    );
  }
}
