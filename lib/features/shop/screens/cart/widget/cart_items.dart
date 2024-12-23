import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/products/cart/add_remove_button.dart';
import '../../../../../common/widget/products/cart/cart_item.dart';
import '../../../../../common/widget/texts/product_price_text.dart';
import '../../../../../utils/constants/size.dart';

class CartItems extends StatelessWidget {
  const CartItems({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_,__) => const SizedBox(height: cartSizes.spaceBtwSection,),
      itemCount: 3,
      itemBuilder: (_, index) =>  Column(
        children: [
          const cartItem(),
          if(showAddRemoveButtons) const SizedBox(height: cartSizes.spaceBtwItems,),


          if(showAddRemoveButtons)
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: 70,),
                  /// add remove button
                  cartProductQuantityWithAddRemoveButton(),
                ],
              ),
              cartProductPriceText(price: '2999'),
            ],
          )
        ],
      ),
    );
  }
}
