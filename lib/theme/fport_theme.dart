import 'package:flutter/material.dart';
import 'package:porfolio_app/theme/colors.dart';

ThemeData fportTheme(context) {
  return ThemeData(
    fontFamily: "MonaSans", // Font default aplikasi
    brightness: Brightness.dark, // Base theme dark mode
    primaryColor: fportZomp, // Warna utama untuk button/primary elements
    scaffoldBackgroundColor: fportChineseBlack, // Background color utama
    secondaryHeaderColor: fportPearlAqua, // Warna aksen sekunder
    cardColor: Colors.white, // Warna card component
    dividerColor: Colors.white, // Warna garis pemisah
    listTileTheme: const ListTileThemeData(
      tileColor: fportEerieBlack,
    ), // Background list item
    // AppBar styling
    appBarTheme: const AppBarTheme(
      elevation: 2.0, // Bayangan appbar
      centerTitle: true, // Judul ditengah
      backgroundColor: Colors.white, // Warna background appbar
    ),

    // Bottom navigation styling
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Theme.of(context).primaryColor, // Warna icon aktif
      unselectedItemColor: Colors.grey[600], // Warna icon non-aktif
    ),

    // Outlined button styling
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          Colors.indigo,
        ), // Background button
        foregroundColor: WidgetStateProperty.all(
          Colors.white,
        ), // Warna text button
      ),
    ),
  );
}
