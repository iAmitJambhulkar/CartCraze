import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/features/shop/screens/cart/widget/cart_items.dart';
import 'package:cartcraze/features/shop/screens/checkout/checkout.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: cartAppBar(title: Text('Cart', style: Theme.of(context).textTheme.headlineMedium,),showBackArrow: true,),

      body: const Padding(
          padding: EdgeInsets.all(cartSizes.defaultSpace),
        /// items in cart
        child: CartItems(),
      ),

      ///checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(cartSizes.defaultSpace),
        child: ElevatedButton(onPressed: ()=> Get.to(()=> const CheckoutScreen()), child: const Text('Checkout Rs. 2999')),
      ),
    );
  }
}

