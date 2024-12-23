import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class cartOrdersListItems extends StatelessWidget {
  const cartOrdersListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_,__) =>const SizedBox(height: cartSizes.spaceBtwItems,),
      itemBuilder:(_,index) => cartRoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(cartSizes.md),
        backgroundColor: dark ? cartColor.dark : cartColor.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// row-1
            Row(
              children: [
                /// icon
                const Icon(Iconsax.ship),
                const SizedBox(width: cartSizes.spaceBtwItems/2,),
      
                ///status & date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Processing', style: Theme.of(context).textTheme.bodyLarge!.apply(color: cartColor.primary, fontWeightDelta: 1),),
                      Text('05 Dec 2024', style: Theme.of(context).textTheme.headlineSmall,)
                    ],
                  ),
                ),
                /// icon
                IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_34), iconSize: cartSizes.iconSm,)
              ],
            ),
            const SizedBox(height: cartSizes.spaceBtwItems,),
      
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      /// icon
                      const Icon(Iconsax.tag),
                      const SizedBox(width: cartSizes.spaceBtwItems/2,),
                  
                      ///status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Order', style: Theme.of(context).textTheme.labelMedium),
                            Text('[#53c25]', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
                Expanded(
                  child: Row(
                    children: [
                      /// icon
                      const Icon(Iconsax.calendar),
                      const SizedBox(width: cartSizes.spaceBtwItems/2,),
      
                      ///status & date
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Shipping Date', style: Theme.of(context).textTheme.labelMedium),
                            Text('12 Dec 2024', style: Theme.of(context).textTheme.titleMedium,)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
      
              ],
            ),
          ],
        ),
      ),
    );
  }
}
