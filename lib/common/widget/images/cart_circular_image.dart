import 'package:flutter/cupertino.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/helpers/helper_function.dart';

class cartCircularImage extends StatelessWidget {
  const cartCircularImage({
    super.key,
    this.fit = BoxFit.cover,
    required this.image,
    this.isNetworkImage = false,
    this.overLayColor,
    this.backgroundColor,
    this.width = 56,
    this.height = 56,
    this.padding = cartSizes.sm,
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overLayColor;
  final Color? backgroundColor;
  final double width, height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (cartHelperFunctions.isDarkMode(context) ? cartColor.black : cartColor.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage ? NetworkImage(image) :AssetImage(image) as ImageProvider,
          color: overLayColor,
          // cartHelperFunctions.isDarkMode(context) ? cartColor.white : cartColor.dark,
        ),
      ),
    );
  }
}
