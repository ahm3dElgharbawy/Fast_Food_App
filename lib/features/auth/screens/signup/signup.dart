import 'package:fast_food/core/constants/images_strings.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/widgets/buttons/outlined_button.dart';
import 'package:fast_food/core/widgets/dividers/or.dart';
import 'package:fast_food/features/auth/screens/signup/widgets/already_have_acount.dart';
import 'package:fast_food/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Image.asset(ImagesStrings.logo, height: 100),
              ),
              const SignUpFormWidget(),
              const OrDividerWidget(),
              CustomOutlinedButton(
                title: "Sign Up With Google",
                onTap: () {},
                icon: ImagesStrings.google,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              CustomOutlinedButton(
                title: "Sign Up With Facebook",
                onTap: () {},
                icon: ImagesStrings.facebook,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const AlreadyHaveAccountWidget(),
              const SizedBox(height: CustomSizes.spaceBtwSections),

            ],
          ),
        ),
      ),
    );
  }
}
