import 'package:fast_food/core/constants/app_colors.dart';
import 'package:fast_food/core/routing/router.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/onboarding.dart';
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
      onGenerateRoute : MyRouter.generateRoute,
      theme: ThemeData(
        fontFamily: "Poppins",
        useMaterial3: true,
        primaryColor: AppColors.primaryColor,
      ),
      home: const OnboardingScreen(),
    );
  }
}
