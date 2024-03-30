import 'package:fast_food/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.width = double.infinity});
  final String title;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(side: BorderSide(width: 3))),
        child: Text(
          title,
          style: const TextStyle(color: AppColors.dark),
        ),
      ),
    );
  }
}
