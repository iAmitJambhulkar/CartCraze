import 'package:cartcraze/features/shop/screens/cart/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/color.dart';

class cartCounterIcon extends StatelessWidget {
  const cartCounterIcon({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: cartColor.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('7', style: Theme.of(context).textTheme.labelLarge?.apply(color: cartColor.white, fontSizeFactor: 0.9),),
            ),
          ),
        )

      ],
    );
  }
}
