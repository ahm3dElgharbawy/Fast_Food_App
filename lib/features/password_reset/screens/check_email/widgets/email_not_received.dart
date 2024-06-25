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
        const Text(
          "Email Not Received? ",
          style: TextStyles.medium14,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            "Resend",
            style: TextStyles.bold14
                .copyWith(decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
