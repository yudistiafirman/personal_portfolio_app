import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:porfolio_app/route/not_found_screen.dart';
import 'package:porfolio_app/route/scaffold_with_bottom_navbar.dart';
import 'package:porfolio_app/screens/experience_screen/experience_screen.dart';
import 'package:porfolio_app/screens/personal_screen/personnal_screen.dart';
import 'package:porfolio_app/screens/project_screen/projects_screen.dart';
import 'package:porfolio_app/screens/skill_screen/skill_screen.dart';

class AppRouter {
  // Getter untuk mengakses router instance
  static GoRouter get router => _router;

  // Konfigurasi utama GoRouter
  static final _router = GoRouter(
    // Route awal saat aplikasi pertama dibuka
    initialLocation: '/personal',
    routes: [
      // ShellRoute untuk membungkus bottom navigation bar di semua screen
      ShellRoute(
        builder: (context, state, child) {
          return ScaffoldWithBottomNavBar(
            // Menentukan index bottom nav berdasarkan lokasi saat ini
            currentIndex: _getCurrentIndex(state.uri.toString()),
            // Handler ketika item bottom nav diklik
            onDestinationSelected: (index) => _onItemTapped(index, context),
            // Child berisi konten dari screen yang aktif
            body: child,
          );
        },
        // Daftar route yang termasuk dalam shell
        routes: [
          _buildRoute(path: '/personal', screen: const PersonalScreen()),
          _buildRoute(path: '/projects', screen: const ProjectsScreen()),
          _buildRoute(path: '/experience', screen: const ExperiencesScreen()),
          _buildRoute(path: '/skills', screen: const SkillScreen()),
        ],
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );

  // Helper method untuk membuat route dengan konfigurasi standar
  static GoRoute _buildRoute({required String path, required Widget screen}) {
    return GoRoute(
      path: path,
      pageBuilder:
          (context, state) =>
              NoTransitionPage(key: state.pageKey, child: screen),
    );
  }

  // Mengubah path/location saat ini menjadi index bottom navigation
  static int _getCurrentIndex(String location) {
    switch (location) {
      case '/personal': // Screen Profil Pribadi
        return 0;
      case '/projects': // Screen Daftar Project
        return 1;
      case '/experience': // Screen Pengalaman Kerja
        return 2;
      case '/skills': // Screen Keahlian
        return 3;
      default: // Default ke screen pertama
        return 0;
    }
  }

  // Handler untuk navigasi saat bottom nav item diklik
  static void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0: // Navigasi ke Personal Screen
        context.go('/personal');
        break;
      case 1: // Navigasi ke Projects Screen
        context.go('/projects');
        break;
      case 2: // Navigasi ke Experience Screen
        context.go('/experience');
        break;
      case 3: // Navigasi ke Skills Screen
        context.go('/skills');
        break;
    }
  }
}

// Custom page transition untuk menghilangkan animasi default
class NoTransitionPage extends CustomTransitionPage<void> {
  NoTransitionPage({required super.key, required super.child})
    : super(
        // Durasi transisi di-set 0 untuk menghilangkan animasi
        transitionDuration: Duration.zero,
        // Transitions builder langsung return child tanpa efek
        transitionsBuilder: (_, __, ___, child) => child,
      );
}
