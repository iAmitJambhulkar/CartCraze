import 'package:cartcraze/common/widget/icons/circular_icon.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class cartBottomAddToCart extends StatelessWidget {
  const cartBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: cartSizes.defaultSpace, vertical: cartSizes.defaultSpace/2),
      decoration: BoxDecoration(
        color: dark? cartColor.darkerGray :cartColor.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(cartSizes.cardRadiusLg),
          topRight: Radius.circular(cartSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const cartCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: cartColor.darkerGray,
                width: 40,
                height: 40,
                color: cartColor.white,
              ),
              const SizedBox(width: cartSizes.spaceBtwItems,),
              Text('3', style: Theme.of(context).textTheme.titleSmall,),
              const SizedBox(width: cartSizes.spaceBtwItems,),
              const cartCircularIcon(
                icon: Iconsax.add,
                backgroundColor: cartColor.black,
                width: 40,
                height: 40,
                color: cartColor.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(cartSizes.md),
                backgroundColor: cartColor.black,
                side: const BorderSide(color: cartColor.black)
              ),
              child: const Text('Add to Cart'))
        ],
      ),
    );
  }
}
