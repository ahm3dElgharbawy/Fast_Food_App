import 'package:fast_food/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPageIndicators extends StatelessWidget {
  const CustomPageIndicators({super.key, required this.activeDot});
  final int activeDot;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          4,
          (index) => AnimatedContainer(
            width: 10,
            height: 10,
            duration: const Duration(milliseconds: 500),
            decoration: BoxDecoration(
              color: activeDot == index ? AppColors.primaryColor : Colors.grey[300],
              shape: BoxShape.circle
            ),
            margin: const EdgeInsets.symmetric(horizontal: 5),
          ),
        )
      ],
    );
  }
}
