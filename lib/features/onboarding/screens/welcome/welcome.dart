import 'package:fast_food/core/constants/images_strings.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/buttons/outlined_button.dart';
import 'package:fast_food/features/onboarding/screens/welcome/widgets/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  ImagesStrings.welcome,
                  height: 250,
                ),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: CustomSizes.defaultSpace),
                  child: Column(
                    children: [
                      Text("Welcome to quickbite",
                          style: AppStyles.textStyle24Bold),
                      SizedBox(height: CustomSizes.spaceBtwItems),
                      Text(
                        "Join our app by signing up or login to unlock seamless ordering experiences tailored just for you.",
                        style: AppStyles.textStyle14Medium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: CustomSizes.spaceBtwSections),
                CustomElevatedButton(title: "SIGN UP", onTap: () {}),
                const SizedBox(height: CustomSizes.spaceBtwItems),
                CustomOutlinedButton(title: "LOGIN", onTap: (){}),
                const SizedBox(height: CustomSizes.spaceBtwSections),
                const CustomTermsAndConditions()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
