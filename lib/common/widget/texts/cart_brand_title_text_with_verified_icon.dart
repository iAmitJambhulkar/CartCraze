import 'package:cartcraze/common/widget/texts/cart_brand_title_text.dart';
import 'package:cartcraze/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/size.dart';

class cartBrandTitleTextWithVerifiedIcon extends StatelessWidget {
  const cartBrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = Colors.blueAccent,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: cartBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSizes,
          ),
        ),
        const SizedBox(width: cartSizes.xs),
        Icon(Iconsax.verify5, color: iconColor, size: cartSizes.iconXs,)

      ],
    );
  }
}