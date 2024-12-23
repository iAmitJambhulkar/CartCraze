import 'package:cartcraze/features/authentication/screens/login/widget/cartLoginForm.dart';
import 'package:cartcraze/features/authentication/screens/login/widget/cartLoginheader.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/constants/text_string.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_style.dart';
import '../../../../common/widget/login_signup/form_divider.dart';
import '../../../../common/widget/login_signup/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: cartSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            /// logo, title and subTitle
            cartLoginHeader(dark: dark),

            ///form
            const cartLoginForm(),

            ///divider
            cartFormDivider(dividerText: cartText.orSignInWith.capitalize!,),

            const SizedBox(height: cartSizes.spaceBtwItems,),

            ///footer
            const cartSocialButton()
          ],
        ),
      ),
    ));
  }
}
