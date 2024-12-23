import 'package:flutter/material.dart';
import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_function.dart';
import '../custom_shapes/container/cartRoundedContainer.dart';
import 'cartCardBrand.dart';

class cartBrandShowcase extends StatelessWidget {
  const cartBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return cartRoundedContainer(
      showBorder: true,
      borderColor: cartColor.darkerGray,
      padding: const EdgeInsets.all(cartSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: cartSizes.spaceBtwItems),
      child: Column(
        children: [
          /// brand with product count
          const cartBrandCard(showBorder: false),
          const SizedBox(height: cartSizes.spaceBtwItems,),

          /// brand top 3 product images
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context){
  return Expanded(
    child: cartRoundedContainer(
      height: 100,
      backgroundColor: cartHelperFunctions.isDarkMode(context) ? cartColor.darkerGray: cartColor.light,
      margin: const EdgeInsets.only(right: cartSizes.sm),
      padding: const EdgeInsets.all(cartSizes.md),
      child: Image(image: AssetImage(image), fit: BoxFit.contain,),
    ),
  );
}
