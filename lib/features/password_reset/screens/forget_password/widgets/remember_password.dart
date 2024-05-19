import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class RememberPasswordWidget extends StatelessWidget {
  const RememberPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Remember the Password? ",
          style: AppStyles.textStyle(14, TextFontWeight.medium),
        ),
        InkWell(
          onTap: () {
            context.pushReplacementNamed(loginRoute);
          },
          child: Text(
            "Login Now",
            style: AppStyles.textStyle(14, TextFontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
