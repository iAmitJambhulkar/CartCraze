import 'package:cartcraze/features/authentication/screens/password_configuration/forget_Password.dart';
import 'package:cartcraze/features/authentication/screens/signup/signup.dart';
import 'package:cartcraze/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';

class cartLoginForm extends StatelessWidget {
  const cartLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: cartSizes.spaceBtwSection),
          child: Column(
            children: [
              ///email
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: cartText.email,
                ),
              ),
              const SizedBox(
                height: cartSizes.spaceBtwInputField,
              ),

              ///password
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  labelText: cartText.password,
                  suffixIcon: Icon(Iconsax.eye_slash),
                ),
              ),
              const SizedBox(
                height: cartSizes.spaceBtwInputField / 2,
              ),

              ///Remember me & forget password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(cartText.rememberMe),
                    ],
                  ),

                  /// forget password
                  TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: const Text(cartText.forgetPassword))
                ],
              ),
              const SizedBox(
                height: cartSizes.spaceBtwInputField,
              ),

              /// sign in button
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () =>Get.to(()=> const NavigationMenu()), child: const Text(cartText.signIn))),
              const SizedBox(
                height: cartSizes.spaceBtwItems,
              ),

              /// create account button
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(()=> const SignupScreen()),
                      child: const Text(cartText.createAccount)
                  )
              ),
            ],
          ),
        )
    );
  }
}
