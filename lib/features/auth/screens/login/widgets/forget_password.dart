import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

class ForgetPasswordWidget extends StatelessWidget {
  const ForgetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: CustomSizes.sm, horizontal: 15),
      child: TextButton(
        onPressed: () {
          context.pushReplacementNamed(forgetPasswordRoute);
        },
        child: const Text(
          "Forget Password?",
          style: TextStyles.medium14,
        ),
      ),
    );
  }
}
