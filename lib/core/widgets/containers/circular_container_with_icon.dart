import 'package:fast_food/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularContainerWithIcon extends StatelessWidget {
  const CustomCircularContainerWithIcon({super.key, required this.icon, this.color = AppColors.primaryColor});

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
