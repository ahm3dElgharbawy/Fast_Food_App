import 'package:fast_food/core/constants/images_strings.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/widgets/buttons/outlined_button.dart';
import 'package:fast_food/core/widgets/dividers/or.dart';
import 'package:fast_food/features/auth/screens/login/widgets/not_have_account.dart';
import 'package:fast_food/features/auth/screens/login/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              const LoginFormWidget(),
              const OrDividerWidget(),
              CustomOutlinedButton(
                title: "Login With Google",
                onTap: () {},
                icon: ImagesStrings.google,
              ),
              const SizedBox(height: CustomSizes.spaceBtwItems),
              CustomOutlinedButton(
                title: "Login With Facebook",
                onTap: () {},
                icon: ImagesStrings.facebook,
              ),
              const SizedBox(height: CustomSizes.spaceBtwSections),
              const NotHaveAccountWidget(),
              const SizedBox(height: CustomSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
