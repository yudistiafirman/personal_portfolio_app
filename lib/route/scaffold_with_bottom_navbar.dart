import 'package:flutter/material.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:porfolio_app/theme/colors.dart';

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({
    super.key,
    required this.body,
    required this.currentIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int currentIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // Memastikan body extends di belakang bottom nav

      body: Stack(
        children: [
          // Konten utama aplikasi
          body,
          // Bottom Navigation Bar
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height:
                  (Theme.of(context).platform == TargetPlatform.android)
                      ? 70
                      : 90,
              color: Colors.transparent,
              child: CustomNavigationBar(
                backgroundColor: Theme.of(context).dividerColor,
                onTap: onDestinationSelected,
                currentIndex: currentIndex,
                isFloating: true,
                borderRadius: const Radius.circular(26),
                iconSize: 52.0,
                selectedColor: Theme.of(context).primaryColor,
                strokeColor: Theme.of(context).scaffoldBackgroundColor,
                unSelectedColor: Theme.of(context).dividerColor,
                elevation: 10,
                scaleFactor: 0.22,
                scaleCurve: Curves.easeInOutCubicEmphasized,
                items: [
                  // Item 1 - Personal Screen
                  CustomNavigationBarItem(
                    icon: Center(
                      child: Icon(
                        Icons.person_outline,
                        size: 26,
                        color: fportChineseBlack,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 26,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),

                  // Item 2 - Projects Screen
                  CustomNavigationBarItem(
                    icon: Center(
                      child: Icon(
                        Icons.folder_outlined,
                        size: 26,
                        color: fportChineseBlack,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Icon(
                        Icons.folder,
                        size: 26,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),

                  // Item 3 - Experience Screen
                  CustomNavigationBarItem(
                    icon: Center(
                      child: Icon(
                        Icons.work_outline,
                        size: 26,
                        color: fportChineseBlack,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Icon(
                        Icons.work,
                        size: 24,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),

                  // Item 4 - Skill  Screen
                  CustomNavigationBarItem(
                    icon: Center(
                      child: Icon(
                        Icons.code_outlined,
                        size: 26,
                        color: fportChineseBlack,
                      ),
                    ),
                    selectedIcon: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Icon(
                        Icons.code,
                        size: 24,
                        color: Theme.of(context).dividerColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
