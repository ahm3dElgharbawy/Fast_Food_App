import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/features/auth/screens/login/login.dart';
import 'package:fast_food/features/auth/screens/signup/signup.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/onboarding.dart';
import 'package:fast_food/features/onboarding/screens/welcome/welcome.dart';
import 'package:fast_food/features/password_reset/screens/check_email/check_email.dart';
import 'package:fast_food/features/password_reset/screens/forget_password/forget_password.dart';
import 'package:fast_food/features/password_reset/screens/reset_password/reset_password.dart';
import 'package:fast_food/features/password_reset/screens/success_reset/success_reset_password.dart';
import 'package:flutter/material.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case welcomeRoute:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
      case checkEmailRoute:
        return MaterialPageRoute(builder: (_) => const CheckEmailScreen());
      case resetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordScreen());
      case successResetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const SuccessResetPasswordScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
