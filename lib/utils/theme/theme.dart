import 'package:cartcraze/utils/theme/custom_theme/appbar_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/bottomsheet_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/chip_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/elevated_button.dart';
import 'package:cartcraze/utils/theme/custom_theme/outline_botton_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/text_theme.dart';
import 'package:cartcraze/utils/theme/custom_theme/textfield_theme.dart';
import 'package:flutter/material.dart';
class CartTheme{
  CartTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    textTheme: cartTextTheme.lightTextTheme,
    chipTheme: cartChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: cartAppbarTheme.lightAppbarTheme,
    checkboxTheme: cartCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: cartBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: cartElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: cartOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: cartTextFieldTheme.lightInputDecorationTheme,


  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    textTheme: cartTextTheme.darkTextTheme,
    chipTheme: cartChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: cartAppbarTheme.darkAppbarTheme,
    checkboxTheme: cartCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: cartBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: cartElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: cartOutlineButtonTheme.darkOutlineButtonTheme,
    inputDecorationTheme: cartTextFieldTheme.darkInputDecorationTheme,
  );
}