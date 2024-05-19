import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/text_fields/normal_text_field.dart';
import 'package:fast_food/core/widgets/text_fields/password_text_field.dart';
import 'package:fast_food/features/auth/screens/login/widgets/forget_password.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
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
          const ForgetPasswordWidget(),
          CustomElevatedButton(title: "LOGIN", onTap: () {}),
        ],
      ),
    );
  }
}
