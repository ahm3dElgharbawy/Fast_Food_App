import 'package:fast_food/core/constants/routes_names.dart';
import 'package:fast_food/core/constants/sizes.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button.dart';
import 'package:fast_food/core/widgets/buttons/elevated_button_with_icon.dart';
import 'package:fast_food/features/onboarding/logic/cubit/onboarding_cubit.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/widgets/page_indicators.dart';
import 'package:fast_food/features/onboarding/screens/onboarding/widgets/page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(),
      child: Scaffold(
        body: BlocConsumer<OnboardingCubit, OnboardingState>(
          listener: (context, state) {
            if (state is OnboardingCompletedState) {
              Navigator.pushNamed(context, welcomeRoute);
            }
          },
          builder: (context, state) {
            OnboardingCubit cubit = context.read<OnboardingCubit>();
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                child: Column(
                  children: [
                    //? Skip button
                    cubit.currentPageIndex != 3 // hide skip btn at the last screen
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomElevatedButtonWithIcon(
                                onTap: () {
                                  cubit.skip();
                                },
                                icon: Icons.arrow_forward_ios_rounded,
                                iconDirection: AxisDirection.right,
                                width: 70,
                                height: 35,
                                title: "Skip",
                              ),
                            ],
                          )
                        : const SizedBox(height: 35),
                    //? Page view
                    CustomOnboardingPageView(
                      pageController: cubit.pageController,
                      onPageChanged: (pageIndex) {
                        cubit.swipe(pageIndex);
                      },
                    ),
                    //? indicators
                    const SizedBox(height: CustomSizes.sm),
                    CustomPageIndicators(
                      activeDot: cubit.currentPageIndex,
                    ),
                    // next button
                    const SizedBox(height: CustomSizes.spaceBtwSections),
                    //? next button
                    CustomElevatedButton(
                        title: cubit.currentPageIndex == 3 ? "Finish" : "Next",
                        onTap: () {
                          cubit.next();
                        })
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
