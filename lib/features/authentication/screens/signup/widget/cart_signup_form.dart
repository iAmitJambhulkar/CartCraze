import 'package:cartcraze/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/size.dart';
import '../../../../../utils/constants/text_string.dart';
import 'cartTermAndConditionCheckBox.dart';

class cartSignupForm extends StatelessWidget {
  const cartSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: cartText.firstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            const SizedBox(width: cartSizes.spaceBtwInputField,),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: cartText.lastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwInputField,),
        ///username
        TextFormField(
          decoration: const InputDecoration(
            labelText: cartText.userName,
            prefixIcon: Icon(Iconsax.user_edit),
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwInputField,),

        ///email
        TextFormField(
          decoration: const InputDecoration(
            labelText: cartText.email,
            prefixIcon: Icon(Iconsax.direct),
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwInputField,),

        ///phone number
        TextFormField(
          decoration: const InputDecoration(
            labelText: cartText.phoneNo,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwInputField,),

        ///password
        TextFormField(
          decoration: const InputDecoration(
            labelText: cartText.password,
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye_slash),
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwInputField,),

        ///Term & conditions checkbox
        const cartTermAndConditionCheckBox(),
        const SizedBox(height: cartSizes.spaceBtwSection,),
        ///signup button
        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.to(()=>const VerifyEmailScreen()), child: const Text(cartText.createAccount),),
        )],
    ),
    );
  }
}


