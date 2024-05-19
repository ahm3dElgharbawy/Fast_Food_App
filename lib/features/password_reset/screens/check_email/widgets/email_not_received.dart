import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:flutter/material.dart';

class EmailNotReceivedWidget extends StatelessWidget {
  const EmailNotReceivedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Email Not Received? ",
          style: AppStyles.textStyle(14, TextFontWeight.medium),
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "Resend",
            style: AppStyles.textStyle(14, TextFontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
