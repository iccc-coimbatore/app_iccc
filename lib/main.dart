import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/theme/app_theme.dart';
import 'app/routes/app_routes.dart';

void main() {
  runApp(const CityBrainApp());
}

class CityBrainApp extends StatelessWidget {
  const CityBrainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'City Brain - ICCC',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.splash,
      defaultTransition: Transition.cupertino,
    );
  }
}
