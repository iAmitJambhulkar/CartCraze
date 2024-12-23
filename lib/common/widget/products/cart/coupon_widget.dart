import 'package:flutter/material.dart';

import '../../../../utils/constants/color.dart';
import '../../../../utils/constants/size.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../../custom_shapes/container/cartRoundedContainer.dart';

class cartCouonCode extends StatelessWidget {
  const cartCouonCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);

    return cartRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? cartColor.dark : cartColor.white,
      padding: const EdgeInsets.only(top: cartSizes.sm, bottom: cartSizes.sm, right: cartSizes.sm, left: cartSizes.md),
      child: Row(
        children: [
          /// textField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          ///button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark ? cartColor.white.withOpacity(0.5) : cartColor.dark.withOpacity(0.5),
                  backgroundColor:Colors.grey.withOpacity(0.2),
                  side: BorderSide(color: cartColor.grey.withOpacity(0.1))
              ),
              child: const Text('Apply'),
            ),
          ),

        ],
      ),
    );
  }
}
