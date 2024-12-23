import 'package:cartcraze/common/styles/shadow.dart';
import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/images/cart_rounded_images.dart';
import 'package:cartcraze/common/widget/texts/cart_brand_title_text_with_verified_icon.dart';
import 'package:cartcraze/common/widget/texts/product_price_text.dart';
import 'package:cartcraze/features/shop/screens/product_details/product_details.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../icons/circular_icon.dart';
import '../../texts/product_text_title.dart';

class cartProductCardVertical extends StatelessWidget {
  const cartProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: ()=> Get.to(()=> const ProductDetails()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [cartShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(cartSizes.productImageRadius),
          color: dark ? cartColor.darkerGray: cartColor.white
        ),
        child: Column(
          children: [
            /// thumbnail, wishlist button, Discount tag
            cartRoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(cartSizes.sm),
              backgroundColor: dark? cartColor.dark: cartColor.light,
              child: Stack(
                children: [
                  ///thumbnail image
                  const cartRoundImage(imageUrl: cartImage.product11, applyImageRadius: true,),
                  ///sale tag
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
            const SizedBox(height: cartSizes.spaceBtwItems/2,),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cartProductTitleText(title: 'Wooden Car Toy', smallSize: true,),
                SizedBox(height: cartSizes.spaceBtwItems/2,),
                cartBrandTitleTextWithVerifiedIcon(title: 'Tony Toy')
              ],
            ),

            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///price
                const Padding(
                  padding: EdgeInsets.only(left: cartSizes.sm),
                  child: cartProductPriceText(price: '2999',),
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}




