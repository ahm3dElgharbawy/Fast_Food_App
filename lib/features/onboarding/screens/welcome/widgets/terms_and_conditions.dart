import 'package:fast_food/core/constants/styles.dart';
import 'package:flutter/material.dart';

class CustomTermsAndConditions extends StatelessWidget {
  const CustomTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: AppStyles.textStyle14Regular.copyWith(color: Colors.black,height: 1.5),
          children: [
            const TextSpan(text: "By"),
            TextSpan(
                text: " Registering ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            const TextSpan(text: "Or"),
            TextSpan(
                text: " Login ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
            const TextSpan(text: "you have agreed to our"),
            TextSpan(
                text: " Terms and Conditions ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor)),
          ]),
    );
  }
}
