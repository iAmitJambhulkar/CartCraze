import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class cartBillingPaymentSection extends StatelessWidget {
  const cartBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        cartSectionHeading(title: 'Payment Method', buttonTitle: 'Change',onPressed: (){},),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),
        Row(
          children: [
            cartRoundedContainer(
              width: 60,
              height: 60,
              backgroundColor: dark? cartColor.light : cartColor.white,
              padding: const EdgeInsets.all(cartSizes.sm),
              child: const Image(image: AssetImage(cartImage.google), fit: BoxFit.contain,),
            ),
            const SizedBox(width: cartSizes.spaceBtwItems/2,),
            Text('Google Pay', style: Theme.of(context).textTheme.bodyLarge,),
          ],
        )
      ],
    );
  }
}
