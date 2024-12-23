import 'package:flutter/material.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/devices/device_utility.dart';

class cartRatingProgressIndicator extends StatelessWidget {
  const cartRatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1 ,child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: cartDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 12,
              borderRadius: BorderRadius.circular(7),
              backgroundColor: cartColor.grey,
              valueColor: const AlwaysStoppedAnimation(cartColor.primary),
            ),
          ),
        ),

      ],
    );
  }
}
