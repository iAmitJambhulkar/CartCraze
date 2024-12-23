import 'package:cartcraze/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/devices/device_utility.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class onBoardingNextButton extends StatelessWidget {
  const onBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Positioned(
        right: cartSizes.defaultSpace,
        bottom: cartDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: ()=> OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor:dark? cartColor.primary : Colors.black),
          child: const Icon(Iconsax.arrow_right_3),
        ));
  }
}