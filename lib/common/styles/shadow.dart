import 'package:cartcraze/utils/constants/color.dart';
import 'package:flutter/cupertino.dart';

class cartShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: cartColor.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
      color: cartColor.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)
  );
}