import 'package:flutter/material.dart';

import '../../../../utils/constants/size.dart';
import '../../layouts/grid_layout.dart';
import '../product_cards/product_card_vertical.dart';

class cartSortableProducts extends StatelessWidget {
  const cartSortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          items: ["What's new", "Price-high to low", "Popularity", "Discount", "Price-low to high", "Customer Rating",]
              .map((option) =>
              DropdownMenuItem(
                  value: option,
                  child: Text(option))).toList(),
          onChanged: (value){},
        ),
        const SizedBox(height: cartSizes.spaceBtwSection,),

        /// products
        cartGridLayout(itemCount: 8, itemBuilder: (_, index) => const cartProductCardVertical())
      ],
    );
  }
}
