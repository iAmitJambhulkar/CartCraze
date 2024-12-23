import 'package:cartcraze/common/widget/login_signup/form_divider.dart';
import 'package:cartcraze/common/widget/login_signup/social_button.dart';
import 'package:cartcraze/features/authentication/screens/signup/widget/cart_signup_form.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///title
              Text(cartText.signUpTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: cartSizes.spaceBtwSection,),

              /// form
              const cartSignupForm(),

              const SizedBox(height: cartSizes.spaceBtwSection,),

              /// Divider
              cartFormDivider(dividerText: cartText.orSignUpWith.capitalize!),
              const SizedBox(height: cartSizes.spaceBtwSection,),

              ///social button
              const cartSocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}


