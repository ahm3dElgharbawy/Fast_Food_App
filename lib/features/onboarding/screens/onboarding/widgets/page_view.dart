import 'package:fast_food/core/constants/images_strings.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomOnboardingPageView extends StatelessWidget {
  const CustomOnboardingPageView({super.key, required this.pageController, this.onPageChanged});
  final PageController pageController;
  final Function(int)? onPageChanged; 

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController ,
        onPageChanged: onPageChanged,
        children: const [
          CustomOnboardingPageViewItem(
            image: ImagesStrings.onboarding1,
            title: "Discover Nearby Restaurants",
            subtitle:
                "Find the best restaurants near you!, And explore a variety of dining options in your area",
          ),
          CustomOnboardingPageViewItem(
            image: ImagesStrings.onboarding2,
            title: "Order in a Snap",
            subtitle:
                "Ordering with just a tap, ensuring your favorite dishes from local restaurants are delivered to your doorstep in no time",
          ),
          CustomOnboardingPageViewItem(
            image: ImagesStrings.onboarding3,
            title: "Trending Tastes",
            subtitle:
                "Indulge in the flavours, offering you a delicious glimpse into what's trending in the world of food.",
          ),
          CustomOnboardingPageViewItem(
            image: ImagesStrings.onboarding4,
            title: "Secure Payments",
            subtitle:
                "Protect your transactions with state-of-the-art encryption and fraud prevention measures, ensuring peace of mind with every purchase you make.",
          ),
        ],
      ),
    );
  }
}
