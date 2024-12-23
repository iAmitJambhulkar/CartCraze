import 'package:cartcraze/common/widget/success_screen/success_screen.dart';
import 'package:cartcraze/features/authentication/screens/login/login.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/constants/text_string.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: ()=> Get.offAll(()=> const LoginScreen()), icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
        child: Column(
          children: [
            ///image
            Image(image: const AssetImage(cartImage.deliveredEmailAnimation), width: cartHelperFunctions.screenWidth() * 0.6,),
            const SizedBox(height: cartSizes.spaceBtwSection,),

            ///Title & subTitle
            Text(cartText.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: cartSizes.spaceBtwItems,),
            Text("amit2004jambhulkar@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: cartSizes.spaceBtwItems,),
            Text(cartText.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: cartSizes.spaceBtwSection,),


            ///Buttons
            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () =>Get.to(()=> SuccessScreen(
              image: cartImage.successfulAnimation,
              title: cartText.yourAccountCreatedTitle,
              subTitle: cartText.yourAccountedCreatedSubTitle,
              onPressed: ()=> Get.to(()=> const LoginScreen()),
            )),
                child: const Text(cartText.cartContinue)),),
            const SizedBox(height: cartSizes.spaceBtwItems,),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(cartText.resendEmail)),),

          ],
        ),
        ),
      ),
    );
  }
}
