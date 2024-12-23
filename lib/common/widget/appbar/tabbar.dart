import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../utils/devices/device_utility.dart';

class cartTabBar extends StatelessWidget implements PreferredSizeWidget {
  const cartTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? cartColor.black : cartColor.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: cartColor.primary,
        labelColor: dark? cartColor.white: cartColor.primary,
        unselectedLabelColor: cartColor.darkerGray,

      ),
    );
  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(cartDeviceUtils.getAppBarHeight());
}
