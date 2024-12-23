
import 'package:flutter/material.dart';

import '../../../../../common/widget/appbar/appbar.dart';
import '../../../../../common/widget/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/text_string.dart';

class cartHomeAppBar extends StatelessWidget {
  const cartHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return cartAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            cartText.homeAppBarTitle,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(color: cartColor.grey),
          ),
          Text(
            cartText.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: cartColor.white),
          ),
        ],
      ),
      actions: [
        cartCounterIcon(onPressed: () {}, iconColor: cartColor.white, )
      ],
    );
  }
}

