import 'package:cartcraze/common/widget/layouts/grid_layout.dart';
import 'package:cartcraze/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/brands/brand_show_case.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/size.dart';

class cartCategoryTab extends StatelessWidget {
  const cartCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children:[
        Padding(
          padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              /// brands
              const cartBrandShowcase(images: [cartImage.product1, cartImage.product3, cartImage.product4],),
              const cartBrandShowcase(images: [cartImage.product1, cartImage.product3, cartImage.product4],),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              /// products
              cartSectionHeading(title: 'You might like', onPressed: (){},),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              cartGridLayout(itemCount: 4, itemBuilder: (_, index) =>const cartProductCardVertical())
            ],
          ),
        ),
      ]
    );
  }
}
