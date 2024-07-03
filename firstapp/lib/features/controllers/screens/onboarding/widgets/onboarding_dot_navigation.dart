import 'package:news_app/features/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDot extends StatelessWidget {
  const OnBoardingDot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
        bottom: 50,
        left: 25,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigation,
          count: 3,
          effect: const ExpandingDotsEffect(
              activeDotColor: Colors.black, dotHeight: 6),
        ));
  }
}
