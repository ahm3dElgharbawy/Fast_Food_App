import 'package:fast_food/core/constants/app_colors.dart';
import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotHaveAccountWidget extends StatelessWidget {
  const NotHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
            text: "if You Don't Have an Account  ",
            style: TextStyle(color: AppColors.dark)),
        TextSpan(
          text: "Sign Up Now",
          recognizer: TapGestureRecognizer()..onTap = () {
            context.pushReplacementNamed(registerRoute);
          },
          style: AppStyles.textStyle(
            14,
            TextFontWeight.semibold,
            decoration: TextDecoration.underline,
          ),
        ),
      ]),
    );
  }
}
