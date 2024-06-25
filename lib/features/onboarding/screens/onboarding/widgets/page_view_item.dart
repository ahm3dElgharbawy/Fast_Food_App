import 'package:fast_food/core/constants/enums.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomOnboardingPageViewItem extends StatelessWidget {
  const CustomOnboardingPageViewItem({super.key, required this.image, required this.title, required this.subtitle});
  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: SvgPicture.asset(
              image,
              height: 300
            ),
          ),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Text(title,style: TextStyles.bold28,textAlign: TextAlign.center),
          const SizedBox(height: CustomSizes.spaceBtwItems),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: CustomSizes.lg),
            child: Text(subtitle,style: TextStyles.regular14,textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
