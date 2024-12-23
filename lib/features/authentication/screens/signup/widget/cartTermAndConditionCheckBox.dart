import 'package:flutter/material.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';
import '../../../../../utils/helpers/helper_function.dart';

class cartTermAndConditionCheckBox extends StatelessWidget {
  const cartTermAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = cartHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24, height: 24, child: Checkbox(value: true, onChanged: (value){})),
        const SizedBox(width: cartSizes.spaceBtwItems,),
        Text.rich(TextSpan(children:[
          TextSpan(text: cartText.iAgreeTo, style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: cartText.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark?  cartColor.white : cartColor.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark? cartColor.white : cartColor.primary
          ),),
          TextSpan(text: cartText.and, style: Theme.of(context).textTheme.bodySmall),
          TextSpan(text: cartText.termOfUse, style: Theme.of(context).textTheme.bodyMedium!.apply(
              color: dark?  cartColor.white : cartColor.primary,
              decoration: TextDecoration.underline,
              decorationColor: dark? cartColor.white : cartColor.primary
          ),),
        ]
        ),),
      ],
    );
  }
}