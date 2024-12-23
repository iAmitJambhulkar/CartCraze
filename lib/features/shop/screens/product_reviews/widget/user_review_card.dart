import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/products/ratings/rating_indicator.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(cartImage.toyIcon),),
                const SizedBox(width: cartSizes.spaceBtwItems,),
                Text('John Cena', style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems,),

        ///review
        Row(
          children: [
            const cartRatingBarIndicator(rating: 4),
            const SizedBox(width: cartSizes.spaceBtwItems,),
            Text('04 Dec, 2024', style: Theme.of(context).textTheme.bodyMedium,)
          ],
        ),
        const SizedBox(height: cartSizes.spaceBtwItems,),
        const ReadMoreText('Lorem ipsum, placeholder or dummy text used in typesetting and '
            'graphic design for previewing layouts.',
          trimLines: 1,
          trimMode: TrimMode.Line,
          trimExpandedText: 'Show Less',
          trimCollapsedText: 'Show More',
          moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: cartColor.primary),
          lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: cartColor.primary),
        ),

        const SizedBox(height: cartSizes.spaceBtwItems,),

        /// company review
        cartRoundedContainer(
          backgroundColor: dark ? cartColor.darkerGray :  cartColor.light,
          child: Padding(
              padding: const EdgeInsets.all(cartSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Amit Jambhulkar', style: Theme.of(context).textTheme.titleMedium,),
                    Text('04 Dec, 2024', style: Theme.of(context).textTheme.bodyMedium,)
                  ],
                ),
                const SizedBox(height: cartSizes.spaceBtwItems,),
                const ReadMoreText('Lorem ipsum, placeholder or dummy text used in typesetting and '
                    'graphic design for previewing layouts.',
                  trimLines: 1,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'Show Less',
                  trimCollapsedText: 'Show More',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: cartColor.primary),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: cartColor.primary),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwSection,),
      ],
    );
  }
}
