import 'package:cartcraze/common/widget/icons/circular_icon.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';

class cartProductQuantityWithAddRemoveButton extends StatelessWidget {
  const cartProductQuantityWithAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        cartCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          size: cartSizes.md,
          color: cartHelperFunctions.isDarkMode(context) ? cartColor.white : cartColor.black,
          backgroundColor: cartHelperFunctions.isDarkMode(context) ? cartColor.darkerGray : cartColor.light,
        ),
        const SizedBox(width: cartSizes.spaceBtwItems,),

        Text('3', style: Theme.of(context).textTheme.titleSmall,),

        const SizedBox(width: cartSizes.spaceBtwItems,),

        const cartCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          size: cartSizes.md,
          color: cartColor.white,
          backgroundColor: cartColor.primary,
        ),
      ],
    );
  }
}

