import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/enums.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/container/cartRoundedContainer.dart';
import '../images/cart_circular_image.dart';
import '../texts/cart_brand_title_text_with_verified_icon.dart';

class cartBrandCard extends StatelessWidget {
  const cartBrandCard({
    super.key,
    required this.showBorder,
    this.onTap,
  });

  final bool showBorder;
  final void Function()? onTap;



  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: cartRoundedContainer(
        padding: const EdgeInsets.all(cartSizes.sm),
        showBorder: showBorder,
        backgroundColor: Colors.transparent,
        child: Row(
          children: [

            /// Icon
            Flexible(
              child: cartCircularImage(
                image: cartImage.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overLayColor: dark? cartColor.white: cartColor.black,
              ),
            ),
            const SizedBox(width: cartSizes.spaceBtwItems / 2,),

            ///text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const cartBrandTitleTextWithVerifiedIcon(title: 'Zara', brandTextSizes: TextSizes.large,),
                  Text(
                    '277 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}