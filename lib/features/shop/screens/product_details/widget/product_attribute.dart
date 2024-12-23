import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/texts/product_price_text.dart';
import 'package:cartcraze/common/widget/texts/product_text_title.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:cartcraze/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widget/chips/choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = cartHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        ///selected attribute pricing and description

        cartRoundedContainer(
          padding: const EdgeInsets.all(cartSizes.md),
          backgroundColor: dark ? cartColor.darkerGray : cartColor.grey,
          child:  Column(
            children: [
              /// title, price and stock status
              Row(
                children: [
                  const cartSectionHeading(title: 'Variation', showActionButton: false,),
                  const SizedBox(width: cartSizes.spaceBtwItems,),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const cartProductTitleText(title: 'Price : ',smallSize: true,),

                          /// actual price
                          Text('Rs. 999', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),),
                          const SizedBox(width: cartSizes.spaceBtwItems,),

                          /// sale price
                          const cartProductPriceText(price: '599')
                        ],
                      ),
                      ///stock
                      Row(
                        children: [
                          const cartProductTitleText(title: 'Stock : ', smallSize: true,),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
              /// variation description
              const cartProductTitleText(title: 'Lorem ipsum, placeholder or dummy text used in typesetting and '
                  'graphic design for previewing layouts. It features scrambled Latin text, '
                  'which emphasizes the design over content of the layout. '
                  'It is the standard placeholder text of the printing and '
                  'publishing industries.',
                smallSize: true,
                maxLines: 4,
              )

            ],
          ),
        ),
        const SizedBox(height: cartSizes.spaceBtwItems,),

        ///Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const cartSectionHeading(title: 'Colors', showActionButton: false,),
            const SizedBox(height: cartSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                cartChoiceChip(text: 'Green', selected: true, onSelected: (value){},),
                cartChoiceChip(text: 'Blue', selected: false,onSelected: (value){}),
                cartChoiceChip(text: 'Yellow', selected: false,onSelected: (value){}),

              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const cartSectionHeading(title: 'Sizes', showActionButton: false,),
            const SizedBox(height: cartSizes.spaceBtwItems / 2,),
            Wrap(
              spacing: 8,
              children: [
                cartChoiceChip(text: 'UK 7', selected: true,onSelected: (value){},),
                cartChoiceChip(text: 'UK 8', selected: false,onSelected: (value){},),
                cartChoiceChip(text: 'UK 9', selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}

