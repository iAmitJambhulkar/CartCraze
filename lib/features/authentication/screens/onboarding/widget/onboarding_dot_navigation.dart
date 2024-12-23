import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/devices/device_utility.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers.onboarding/onboarding_controller.dart';

class onBoardingDotNavigation extends StatelessWidget {
  const onBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = cartHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: cartDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: cartSizes.defaultSpace,
        child: SmoothPageIndicator(
            count: 3,
            controller: controller.pageController,
            onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(
                activeDotColor: dark? cartColor.light : cartColor.dark, dotHeight: 6),
        )
    );
  }
}