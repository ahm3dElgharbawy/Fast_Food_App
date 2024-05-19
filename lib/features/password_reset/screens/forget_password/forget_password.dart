import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/text_fields/normal_text_field.dart';
import 'package:fast_food/features/password_reset/screens/forget_password/widgets/remember_password.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Forget Password",
                            style: AppStyles.textStyle(28, TextFontWeight.semibold),
                          ),
                          const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                          Text(
                            "Enter Your Registered Email Below",
                            style: AppStyles.textStyle(14, TextFontWeight.normal),
                          ),
                        ]),
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwSections * 2),
                  CustomTextField(
                    hint: "Contact@gmail.com",
                    label: "Email",
                    controller: TextEditingController(),
                  ),
                  const SizedBox(height: CustomSizes.spaceBtwItems / 2),
                  const RememberPasswordWidget(),
                  const SizedBox(height: CustomSizes.spaceBtwItems * 6),
                  CustomElevatedButton(
                    title: "SUBMIT",
                    onTap: () {
                      context.pushNamed(checkEmailRoute);
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
