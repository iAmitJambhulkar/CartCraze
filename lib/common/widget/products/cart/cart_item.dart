import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/image_string.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../images/cart_rounded_images.dart';
import '../../texts/cart_brand_title_text_with_verified_icon.dart';
import '../../texts/product_text_title.dart';

class cartItem extends StatelessWidget {
  const cartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        cartRoundImage(
          imageUrl: cartImage.product1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(cartSizes.sm),
          backgroundColor: cartHelperFunctions.isDarkMode(context) ? cartColor.darkerGray : cartColor.light,
        ),
        const SizedBox(width: cartSizes.spaceBtwItems,),

        /// title, price and size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const cartBrandTitleTextWithVerifiedIcon(title: 'Zara'),
              const Flexible(child: cartProductTitleText(title: 'Jacket for Women', maxLines: 1,)),

              ///attribute
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green ', style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 7', style: Theme.of(context).textTheme.bodyLarge),
                  ],
                ),
              ),

            ],
          ),
        )
      ],
    );
  }
}
