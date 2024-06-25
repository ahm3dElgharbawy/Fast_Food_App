import 'package:fast_food/core/helpers/on_generate_routes.dart';
import 'package:fast_food/core/theme/app_themes/app_themes.dart';
import 'package:fast_food/features/onboarding/screens/welcome/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fast Food',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoutes,
      theme: AppThemes.light,
      home: const WelcomeScreen(),
    );
  }
}
