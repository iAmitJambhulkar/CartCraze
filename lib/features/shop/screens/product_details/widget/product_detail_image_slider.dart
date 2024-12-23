import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/custom_shapes/curved_edges/curved_edge_widget.dart';
import '../../../../../common/widget/icons/circular_icon.dart';
import '../../../../../common/widget/images/cart_rounded_images.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/helpers/helper_function.dart';

class cartProductImageSlider extends StatelessWidget {
  const cartProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final dark = cartHelperFunctions.isDarkMode(context);

    return cartCurvedEdgeWidget(
      child: Container(
        color: dark? cartColor.darkerGray: cartColor.light,
        child:  Stack(
          children: [
            ///main large image
            const SizedBox(height: 400,child: Padding(
              padding: EdgeInsets.all(cartSizes.productImageRadius *2),
              child: Center(child: Image(image: AssetImage(cartImage.product11))),
            ),),

            /// image slider
            Positioned(
              right: 0,
              bottom: 30,
              left: cartSizes.defaultSpace,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_,__)=> const SizedBox(width: cartSizes.spaceBtwItems,),
                  itemCount: 4,
                  itemBuilder: (_,index)=>cartRoundImage(
                      width: 80,
                      border: Border.all(color: cartColor.primary),
                      backgroundColor: dark? cartColor.dark: cartColor.white,
                      padding: const EdgeInsets.all(cartSizes.sm),
                      imageUrl: cartImage.product1
                  ),),
              ),
            ),
            ///appbar
            const cartAppBar(
              showBackArrow: true,
              actions: [cartCircularIcon(icon: Iconsax.heart5, color: Colors.red,)],
            )

          ],
        ),
      ),
    );
  }
}
