import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordFormWidget extends StatelessWidget {
  const ResetPasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomPasswordTextField(
          hint: "********",
          label: "New Password",
          controller: TextEditingController(),
        ),
        const SizedBox(height: CustomSizes.spaceBtwTextFields),
        CustomPasswordTextField(
          hint: "********",
          label: "Confirm Password",
          controller: TextEditingController(),
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems * 6),
        CustomElevatedButton(
          title: "RESET PASSWORD",
          onTap: () {
            context.pushNamed(successResetPasswordRoute);
          },
        )
      ],
    );
  }
}
