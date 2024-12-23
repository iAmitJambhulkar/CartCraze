import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class cartBillingAmountSection extends StatelessWidget {
  const cartBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('Rs. 2999', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),

        ///shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('Rs. 100', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),

        ///tax fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('Rs. 69', style: Theme.of(context).textTheme.labelLarge,),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),

        ///Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('Rs. 3168', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,)
      ],
    );
  }
}
