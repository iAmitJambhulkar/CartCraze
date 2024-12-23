import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../controllers.onboarding/onboarding_controller.dart';


class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: cartDeviceUtils.getAppBarHeight(),
        right: cartSizes.defaultSpace,
        child: TextButton(onPressed: ()=>OnBoardingController.instance.skipPage(),
            child: const Text("Skip")));
  }
}
