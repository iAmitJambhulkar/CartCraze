import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class cartSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: cartSizes.appBarHeight,
    left: cartSizes.defaultSpace,
    bottom: cartSizes.defaultSpace,
    right: cartSizes.defaultSpace,
  );
}