import 'package:fast_food/core/constants/app_colors.dart';
import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountWidget extends StatelessWidget {
  const AlreadyHaveAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        const TextSpan(
            text: "Already Have an Account  ",
            style: TextStyle(color: AppColors.dark)),
        TextSpan(
          text: "Login Now",
          recognizer: TapGestureRecognizer()..onTap = () {
            context.pushReplacementNamed(loginRoute);
          },
          style: TextStyles.regular14
        ),
      ]),
    );
  }
}
