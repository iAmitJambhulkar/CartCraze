import 'package:cartcraze/features/authentication/screens/password_configuration/reset_Password.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/constants/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
          padding: const EdgeInsets.all(cartSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///headings
            Text(cartText.forgetPasswordTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: cartSizes.spaceBtwItems,),
            Text(cartText.forgetPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium,),
            const SizedBox(height: cartSizes.spaceBtwItems *2, ),

            ///textfield
            TextFormField(
              decoration: const InputDecoration(
                labelText: cartText.email,
                prefixIcon: Icon(Iconsax.direct_right),

              ),
            ),
            const SizedBox(height: cartSizes.spaceBtwSection),

            ///submit button
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.off(()=> const ResetPassword()), child: const Text(cartText.submit)))
        ],
      ),
      ),
    );
  }
}
