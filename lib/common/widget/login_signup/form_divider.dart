import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../utils/constants/color.dart';

class cartFormDivider extends StatelessWidget {
  const cartFormDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(
          child: Divider(
            color: cartColor.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          dividerText.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Flexible(
          child: Divider(
            color: cartColor.grey,
            thickness: 0.5,
            indent: 6,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
