import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widget/custom_shapes/container/cartRoundedContainer.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return cartRoundedContainer(
      padding: const EdgeInsets.all(cartSizes.md),
      width: double.infinity,
      showBorder: true,
      backgroundColor: selectedAddress ? cartColor.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
          ? cartColor.darkerGray
          : cartColor.grey,
      margin: const EdgeInsets.only(bottom: cartSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,

            child: Icon(
              selectedAddress ? Iconsax.tick_circle5 : null,
              color: selectedAddress
                  ? dark
                  ? cartColor.light
                  : cartColor.dark
                  :null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Amit Jambhulkar',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: cartSizes.sm/2,),
              const Text('+91-9970099854', maxLines: 1, overflow: TextOverflow.ellipsis,),
              const SizedBox(height: cartSizes.sm/2,),
              const Text('Plot no. 58B, Prity Housing Society, Nagpur 440014', softWrap: true,)

            ],
          )
        ],
      ),
    );
  }
}
