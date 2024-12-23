import 'package:cartcraze/features/authentication/screens/onboarding/widget/onboarding_dot_navigation.dart';
import 'package:cartcraze/features/authentication/screens/onboarding/widget/onboarding_next_button.dart';
import 'package:cartcraze/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:cartcraze/features/authentication/screens/onboarding/widget/onboarding_skip.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers.onboarding/onboarding_controller.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: cartImage.onBoardingImage1,
                title: cartText.onBoardingTitle1,
                subTitle: cartText.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: cartImage.onBoardingImage2,
                title: cartText.onBoardingTitle2,
                subTitle: cartText.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: cartImage.onBoardingImage3,
                title: cartText.onBoardingTitle3,
                subTitle: cartText.onBoardingSubTitle3,
              )
            ],
          ),

          /// skip button
          const onBoardingSkip(),

          /// dot navigation smoothPageIndicator
          const onBoardingDotNavigation(),

          /// circular button
          const onBoardingNextButton()

        ],
      ),
    );
  }
}




