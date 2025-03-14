import 'package:flutter/material.dart';
import 'package:porfolio_app/route/app_route.dart';
import 'package:porfolio_app/theme/fport_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Portfolio App',
      routerConfig: AppRouter.router,
      theme: fportTheme(context),
    );
  }
}
