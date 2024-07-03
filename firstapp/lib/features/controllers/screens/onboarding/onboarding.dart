import 'package:news_app/features/controllers/onboarding/onboarding_controller.dart';
import 'package:news_app/features/controllers/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:news_app/features/controllers/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:news_app/features/controllers/screens/onboarding/widgets/onboarding_page.dart';
import 'package:news_app/features/controllers/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:news_app/utils/image_strings.dart';
import 'package:news_app/utils/text_strings.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:flutter/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());


    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          const OnBoardingSkip(),

          // Smooth Indicator Dot Page
          const OnBoardingDot(),

          // Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}