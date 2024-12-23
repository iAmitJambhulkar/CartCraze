
import 'package:flutter/material.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_function.dart';

class cartVerticalImageText extends StatelessWidget {

  const cartVerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = cartColor.white,
    this.backgroundColor,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;


  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: cartSizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(cartSizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? cartColor.black: cartColor.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child:  Center(
                child: Image(image: AssetImage(image), fit: BoxFit.cover,color: dark ? cartColor.light : cartColor.dark,),
              ),
            ),
            const SizedBox(height: cartSizes.spaceBtwItems/2,),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(color: textColor),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}