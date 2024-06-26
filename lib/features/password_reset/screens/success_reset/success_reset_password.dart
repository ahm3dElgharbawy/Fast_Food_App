import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/containers/circular_container_with_icon.dart';
import 'package:flutter/material.dart';

class SuccessResetPasswordScreen extends StatelessWidget {
  const SuccessResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CustomCircularContainerWithIcon(icon: Icons.verified_user_outlined),
                  const SizedBox(height: CustomSizes.spaceBtwItems),
                  const Text(
                    "Password Updated",
                    style: TextStyles.semibold28,
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Congratulation Your Password Has been Updated",
                      style: TextStyles.regular14,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwItems * 6),
                  CustomElevatedButton(
                    title: "Finish",
                    onTap: () {
                      context.pushReplacementNamed(loginRoute);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
