import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class cartBillingAddressSection extends StatelessWidget {
  const cartBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        cartSectionHeading(title: 'Shipping Address', buttonTitle: 'Change',onPressed: (){},),
        Text('Amit Jambhulkar', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),


        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16,),
            const SizedBox(width: cartSizes.spaceBtwItems,),
            Text('+91-9970099854', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),

        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16,),
            const SizedBox(width: cartSizes.spaceBtwItems,),
            Expanded(child: Text('Plot no. 58B, Prity Housing Society, Nara, Nagpur 440014', style: Theme.of(context).textTheme.bodyMedium,softWrap: true,)),
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems/2,),
      ],
    );
  }
}
