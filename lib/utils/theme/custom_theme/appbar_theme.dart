import 'package:flutter/material.dart';

class cartAppbarTheme{
  cartAppbarTheme._();
  static const lightAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor:  Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24,),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24,),
    titleTextStyle: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
  );
  static const darkAppbarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor:  Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black, size: 24,),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24,),
    titleTextStyle: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
  );

}