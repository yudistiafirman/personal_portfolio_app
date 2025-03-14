import 'package:flutter/material.dart';
import 'package:porfolio_app/screens/personal_screen/widgets/icon_container.dart';

/// Item individual untuk menampilkan:
/// - Icon kontak
/// - Nilai kontak (email/telepon/lokasi)
class ContactInfoItem extends StatelessWidget {
  final IconData icon;
  final String value;

  const ContactInfoItem({super.key, required this.icon, required this.value});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconContainer(icon: icon),
      title: Text(
        value,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Theme.of(context).scaffoldBackgroundColor,
        ),
      ),
    );
  }
}
