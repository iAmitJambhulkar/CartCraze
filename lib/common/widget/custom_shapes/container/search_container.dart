import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/devices/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class cartSearchContainer extends StatelessWidget {
  const cartSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.padding = const EdgeInsets.symmetric(horizontal: cartSizes.defaultSpace),
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: cartDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(cartSizes.md),
          decoration: BoxDecoration(
            color: showBackground ? dark ? cartColor.dark: cartColor.light : Colors.transparent,
            borderRadius: BorderRadius.circular(cartSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: cartColor.grey) : null ,
          ),
          child: Row(
            children: [
              Icon(icon , color: cartColor.grey,),
              const SizedBox(width: cartSizes.spaceBtwItems,),
              Text(text, style: Theme.of(context).textTheme.bodySmall,)
            ],
          ),
        ),
      ),
    );
  }
}
