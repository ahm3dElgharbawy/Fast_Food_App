import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:fast_food/core/helpers/extensions.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/text_fields/password_text_field.dart';
import 'package:fast_food/features/password_reset/screens/reset_password/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Change Password",
                            style: TextStyles.semibold28,
                          ),
                          SizedBox(height: CustomSizes.spaceBtwItems / 2),
                          Text(
                            "Enter Your Password Below",
                            style:TextStyles.regular14,
                          ),
                        ]),
                  ),
                  SizedBox(height: CustomSizes.spaceBtwSections * 2),
                  ResetPasswordFormWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
