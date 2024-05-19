import 'package:fast_food/features/onboarding/data/data_source/onboarding.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomOnboardingPageView extends StatelessWidget {
  const CustomOnboardingPageView(
      {super.key, required this.pageController, this.onPageChanged});
  final PageController pageController;
  final Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: OnboardingData.getData
            .map(
              (onboarding) => CustomOnboardingPageViewItem(
                image: onboarding.image,
                title: onboarding.title,
                subtitle: onboarding.subtitle,
              ),
            )
            .toList(),
      ),
    );
  }
}
