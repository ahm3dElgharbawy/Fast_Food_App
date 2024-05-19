import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/text_fields/normal_text_field.dart';
import 'package:fast_food/core/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextField(
            hint: "name here",
            label: "Full Name",
            controller: TextEditingController(),
          ),
          const SizedBox(height: CustomSizes.spaceBtwTextFields),
          CustomTextField(
            hint: "Example@gmail.com",
            label: "Email",
            controller: TextEditingController(),
          ),
          const SizedBox(height: CustomSizes.spaceBtwTextFields),
          CustomPasswordTextField(
            hint: "********",
            label: "Password",
            controller: TextEditingController(),
          ),
          const SizedBox(height: CustomSizes.spaceBtwTextFields),
          CustomPasswordTextField(
            hint: "********",
            label: "Confirm Password",
            controller: TextEditingController(),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),

          CustomElevatedButton(title: "SIGN UP", onTap: () {}),
        ],
      ),
    );
  }
}
