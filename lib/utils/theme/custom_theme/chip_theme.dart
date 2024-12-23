import 'package:cartcraze/utils/constants/color.dart';
import 'package:flutter/material.dart';

class cartChipTheme{
  cartChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: cartColor.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,

  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: cartColor.darkerGray,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: cartColor.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,

  );
}