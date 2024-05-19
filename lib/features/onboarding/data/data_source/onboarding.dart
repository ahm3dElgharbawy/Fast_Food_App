import 'package:fast_food/core/constants/images_strings.dart';
import 'package:fast_food/features/onboarding/data/models/onboarding.dart';

abstract class OnboardingData {
  static List<OnboardingModel> get getData => [
        const OnboardingModel(
          image: ImagesStrings.onboarding1,
          title: "Discover Nearby Restaurants",
          subtitle:
              "Find the best restaurants near you!, And explore a variety of dining options in your area",
        ),
        const OnboardingModel(
          image: ImagesStrings.onboarding2,
          title:  "Order in a Snap",
          subtitle:
              "Ordering with just a tap, ensuring your favorite dishes from local restaurants are delivered to your doorstep in no time",
        ),
        const OnboardingModel(
          image: ImagesStrings.onboarding3,
          title: "Trending Tastes",
          subtitle:
              "Indulge in the flavours, offering you a delicious glimpse into what's trending in the world of food.",
        ),
        const OnboardingModel(
          image: ImagesStrings.onboarding4,
          title: "Secure Payments",
          subtitle:
              "Protect your transactions with state-of-the-art encryption and fraud prevention measures, ensuring peace of mind with every purchase you make.",
        ),
      ];
}
