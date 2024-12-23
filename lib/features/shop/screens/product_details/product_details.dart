import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/images/cart_circular_image.dart';
import 'package:cartcraze/common/widget/texts/cart_brand_title_text_with_verified_icon.dart';
import 'package:cartcraze/common/widget/texts/product_price_text.dart';
import 'package:cartcraze/common/widget/texts/product_text_title.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/features/shop/screens/product_details/widget/bottom_add_to_cart_widget.dart';
import 'package:cartcraze/features/shop/screens/product_details/widget/product_attribute.dart';
import 'package:cartcraze/features/shop/screens/product_details/widget/product_detail_image_slider.dart';
import 'package:cartcraze/features/shop/screens/product_details/widget/rating_and_share_widget.dart';
import 'package:cartcraze/features/shop/screens/product_reviews/product_review.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/enums.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: const cartBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///product image slider
            const cartProductImageSlider(),

            /// product details
            Padding(
              padding: const EdgeInsets.only(right: cartSizes.defaultSpace, left: cartSizes.defaultSpace, bottom: cartSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// rating &share
                  const cartRatingAndShare(),
                  /// price, title, stock, brand
                  Row(

                    children: [
                      ///sale tag
                      cartRoundedContainer(
                        radius: cartSizes.sm,
                        backgroundColor: cartColor.secondary.withOpacity(0.8),
                        padding: const EdgeInsets.symmetric(horizontal: cartSizes.sm, vertical: cartSizes.xs),
                        child: Text('25%', style: Theme.of(context).textTheme.labelLarge!.apply(color: cartColor.black),),
                      ),
                      const SizedBox(width: cartSizes.spaceBtwItems,),
                      ///price tag
                      Text('Rs. 4999', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                      const SizedBox(width: cartSizes.spaceBtwItems,),
                      const cartProductPriceText(price: '2999', isLarge: true,),
                    ],
                  ),
                  const SizedBox(height: cartSizes.spaceBtwItems/ 1.5,),

                  ///title
                  const cartProductTitleText(title: 'Wooden Car Toy',),
                  const SizedBox(height: cartSizes.spaceBtwItems/ 1.5,),

                  ///stock
                  Row(
                    children: [
                      const cartProductTitleText(title: 'Status',),
                      const SizedBox(width: cartSizes.spaceBtwItems),
                      Text('In Stock', style: Theme.of(context).textTheme.titleMedium,),

                    ],
                  ),
                  const SizedBox(height: cartSizes.spaceBtwItems/ 1.5,),

                  ///brand
                  Row(
                    children: [
                      cartCircularImage(
                          image: cartImage.toyIcon,
                        width: 32,
                        height: 32,
                        overLayColor: dark ? cartColor.white: cartColor.black,
                      ),
                      const cartBrandTitleTextWithVerifiedIcon(title: 'Tony Toy',brandTextSizes: TextSizes.medium, ),
                    ],
                  ),
                  const SizedBox(height: cartSizes.spaceBtwItems/ 1.5,),


                  /// attributes
                  const ProductAttributes(),
                  const SizedBox(height: cartSizes.spaceBtwSection,),

                  /// checkout button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                  const SizedBox(height: cartSizes.spaceBtwSection,),

                  /// description
                  const cartSectionHeading(title: 'Description', showActionButton: false,),
                  const SizedBox(height: cartSizes.spaceBtwItems,),
                  const ReadMoreText('Lorem ipsum, placeholder or dummy text used in typesetting and '
                      'graphic design for previewing layouts. It features scrambled Latin text, '
                      'which emphasizes the design over content of the layout. '
                      'It is the standard placeholder text of the printing and '
                      'publishing industries.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Show more',
                    trimExpandedText: 'Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),

                  /// review
                  const Divider(),
                  const SizedBox(height: cartSizes.spaceBtwItems,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const cartSectionHeading(title: 'Reviews(177)',showActionButton: false,),
                      IconButton(onPressed: () => Get.to(() => const ProductReviewScreen()), icon: const Icon(Iconsax.arrow_right_3, size: 18,)),
                    ],
                  ),

                  const SizedBox(height: cartSizes.spaceBtwSection,),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}

