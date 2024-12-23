import 'package:cartcraze/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:cartcraze/features/shop/screens/all_products/all_products.dart';
import 'package:cartcraze/features/shop/screens/home/widget/home_appbar.dart';
import 'package:cartcraze/features/shop/screens/home/widget/home_categories.dart';
import 'package:cartcraze/features/shop/screens/home/widget/promo_slider.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/widget/custom_shapes/container/primary_header_container.dart';
import '../../../../common/widget/custom_shapes/container/search_container.dart';
import '../../../../common/widget/layouts/grid_layout.dart';
import '../../../../common/widget/texts/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const cartPrimaryHeaderContainer(
                child: Column(
                  children: [
                    ///appbar
                    cartHomeAppBar(),
                    SizedBox(height: cartSizes.spaceBtwSection,),

                    /// searchbar
                    cartSearchContainer(
                      text: 'Search in Store',
                    ),
                    SizedBox(height: cartSizes.spaceBtwSection,),

                    ///categories
                    Padding(
                      padding: EdgeInsets.only(left: cartSizes.defaultSpace),
                      child: Column(
                        children: [
                          ///heading
                          cartSectionHeading(title: 'Popular Categories', showActionButton: false,textColor: cartColor.white,),
                          SizedBox(height: cartSizes.spaceBtwItems,),

                          /// categories
                          cartHomeCategories(),
                        ],
                      ),
                    ),
                    SizedBox(height: cartSizes.spaceBtwSection,)
                  ],
                )
            ),

            ///body
            Padding(
              padding:  const EdgeInsets.all(cartSizes.defaultSpace),
              child: Column(
                children: [
                  ///promo slider
                  const cartPromoSlider(banners: [cartImage.promo1,cartImage.promo2, cartImage.promo4],),
                  const SizedBox(height: cartSizes.spaceBtwSection,),

                  ///heading
                  cartSectionHeading(title: 'Popular Products', onPressed: () => Get.to(()=> const AllProducts()),),
                  const SizedBox(height: cartSizes.spaceBtwSection,),

                  /// popular products
                  cartGridLayout(itemCount: 6, itemBuilder: (_ , index )=> const cartProductCardVertical()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

