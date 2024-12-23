import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/images/cart_rounded_images.dart';
import 'package:cartcraze/common/widget/texts/cart_brand_title_text_with_verified_icon.dart';
import 'package:cartcraze/common/widget/texts/product_price_text.dart';
import 'package:cartcraze/common/widget/texts/product_text_title.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../icons/circular_icon.dart';

class cartProductCardHorizontal extends StatelessWidget {
  const cartProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = cartHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(cartSizes.productImageRadius),
        color: dark ? cartColor.darkerGray: cartColor.softGrey
     ),
      child: Row(
        children: [
          ///thumbnail
          cartRoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(cartSizes.sm),
            backgroundColor: dark ? cartColor.dark : cartColor.white,
            child:  Stack(
              children: [
                const SizedBox(
                    height: 120,
                    width: 120,
                    child: cartRoundImage(
                      imageUrl: cartImage.product14,
                      // fit: BoxFit.cover,  /// added extra
                      applyImageRadius: true,),
                ),
                Positioned(
                  top: 12,
                  child: cartRoundedContainer(
                    radius: cartSizes.sm,
                    backgroundColor: cartColor.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: cartSizes.sm, vertical: cartSizes.xs),
                    child: Text('27%', style: Theme.of(context).textTheme.labelLarge!.apply(color: cartColor.black),),
                  ),
                ),
                /// favourite icon button
                const Positioned(
                    top: 0,
                    right: 0,
                    child: cartCircularIcon(icon: Iconsax.heart5,color: Colors.red,))
              ],
            ),
          ),

          ///details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: cartSizes.sm, left: cartSizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      cartProductTitleText(title: 'Puma Spots Shoes', smallSize: true,),
                      SizedBox(height: cartSizes.spaceBtwItems/2,),
                      cartBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///pricing
                      const Flexible(child: cartProductPriceText(price: '7999')),

                      ///add to cart
                      Container(
                        decoration: const BoxDecoration(
                            color: cartColor.dark,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(cartSizes.cardRadiusMd),
                                bottomRight: Radius.circular(cartSizes.productImageRadius)
                            )
                        ),
                        child: const SizedBox(
                            width: cartSizes.iconLg * 1.2,
                            height: cartSizes.iconLg * 1.2,
                            child: Center(child: Icon(Iconsax.add, color: cartColor.white,))),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
