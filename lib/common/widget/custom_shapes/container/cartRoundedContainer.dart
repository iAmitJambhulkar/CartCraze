import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/cupertino.dart';

class cartRoundedContainer extends StatelessWidget {
  const cartRoundedContainer({
    super.key,
    this.width,
    this.height,
    this.radius = cartSizes.cardRadiusLg,
    this.child,
    this.showBorder = false,
    this.borderColor = cartColor.borderPrimary,
    this.backgroundColor = cartColor.white,
    this.padding,
    this.margin});

  final double? width;
  final double? height;
  final double radius;
  final Widget? child;
  final bool showBorder;
  final Color borderColor;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
