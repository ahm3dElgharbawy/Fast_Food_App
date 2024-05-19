import 'package:fast_food/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton(
      {super.key,
      required this.title,
      required this.onTap,
      this.width = double.infinity,
      this.icon});
  final String title;
  final VoidCallback onTap;
  final double? width;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: const BorderSide(color: AppColors.dark)),
        child: Row(
          children: [
            if (icon != null)
              Expanded(
                flex: 1,
                child: SvgPicture.asset(
                  icon!,
                  width: 30,
                ),
              ),
            // if(icon != null ) const SizedBox(width: CustomSizes.spaceBtwItems),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: const TextStyle(color: AppColors.dark),
                textAlign: icon == null ? TextAlign.center : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
