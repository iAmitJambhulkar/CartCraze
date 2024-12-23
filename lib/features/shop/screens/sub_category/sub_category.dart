import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/images/cart_rounded_images.dart';
import 'package:cartcraze/common/widget/products/product_cards/product_card_horizontal.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class cartSubCategoryScreen extends StatelessWidget {
  const cartSubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const cartAppBar(title: Text('Sports'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(cartSizes.defaultSpace),
        child:Column(
          children: [
            ///banner
            const cartRoundImage(imageUrl: cartImage.promo3, width: double.infinity,applyImageRadius: true,),
            const SizedBox(height: cartSizes.spaceBtwSection,),

            /// sub categories
            Column(
              children: [
                ///heading
                cartSectionHeading(title: 'Sports shoe', onPressed: (){},),
                const SizedBox(height: cartSizes.spaceBtwItems/2,),

                SizedBox(
                  height: 120,
                  child: ListView.separated(
                    separatorBuilder: (context, index)=>const SizedBox(width: cartSizes.spaceBtwItems,),
                    itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>const cartProductCardHorizontal(),
                  ),
                ),
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
