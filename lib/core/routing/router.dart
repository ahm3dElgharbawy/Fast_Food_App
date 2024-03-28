import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
