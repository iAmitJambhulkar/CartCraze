import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Padding(
          padding:  const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                  width: cartHelperFunctions.screenWidth()*0.8,
                  height: cartHelperFunctions.screenHeight()*0.6,
                  image: AssetImage(image
                  )
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: cartSizes.spaceBtwItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }
}
