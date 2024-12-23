import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/image_string.dart';
import '../../../utils/constants/size.dart';

class cartSocialButton extends StatelessWidget {
  const cartSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: cartColor.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){},
            icon: const Image(
                width: cartSizes.iconMd,
                height: cartSizes.iconMd,
                image: AssetImage(cartImage.google)),),
        ),
        const SizedBox(width: cartSizes.spaceBtwItems,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: cartColor.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){},
            icon: const Image(
                width: cartSizes.iconMd,
                height: cartSizes.iconMd,
                image: AssetImage(cartImage.facebook)),),
        ),
      ],);
  }
}