import 'package:cartcraze/common/styles/spacing_style.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/size.dart';
import '../../../utils/constants/text_string.dart';
import '../../../utils/helpers/helper_function.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: cartSpacingStyle.paddingWithAppBarHeight *2,
            child: Column(
            children: [
              ///Image
              Image(image:  AssetImage(image), width: cartHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: cartSizes.spaceBtwSection,),

              ///Title & subTitle
              Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: cartSizes.spaceBtwItems,),
              Text(subTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: cartSizes.spaceBtwSection,),

              ///Buttons
              SizedBox(width: double.infinity,
                  child: ElevatedButton(onPressed: onPressed, child:  const Text(cartText.cartContinue)),
              )],
        ),
        ),
      ),
    );
  }
}
