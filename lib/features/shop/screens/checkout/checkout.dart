import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/custom_shapes/container/cartRoundedContainer.dart';
import 'package:cartcraze/common/widget/success_screen/success_screen.dart';
import 'package:cartcraze/features/shop/screens/checkout/widget/billing_address_section.dart';
import 'package:cartcraze/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:cartcraze/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:cartcraze/navigation_menu.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widget/products/cart/coupon_widget.dart';
import '../../../../utils/helpers/helper_function.dart';
import '../cart/widget/cart_items.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = cartHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: cartAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              /// items in cart
              const CartItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: cartSizes.spaceBtwSection,
              ),

              /// coupon textField
              const cartCouonCode(),
              const SizedBox(
                height: cartSizes.spaceBtwSection,
              ),

              /// billing section
              cartRoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(cartSizes.md),
                backgroundColor: dark ? cartColor.black : cartColor.white,
                child: const Column(
                  children: [
                    ///pricing
                    cartBillingAmountSection(),
                    SizedBox(height: cartSizes.spaceBtwItems,),
                    ///divider
                    Divider(),
                    SizedBox(height: cartSizes.spaceBtwItems,),
                    ///payment method
                    cartBillingPaymentSection(),
                    SizedBox(height: cartSizes.spaceBtwItems,),
                    ///address
                    cartBillingAddressSection(),
                    SizedBox(height: cartSizes.spaceBtwItems,),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(cartSizes.defaultSpace),
        child: ElevatedButton(
            onPressed: ()=> Get.to(()
            => SuccessScreen(
                image: cartImage.successPaymentIcon,
                title: 'Payment Success!',
                subTitle: 'Your item will be shipped soon!',
                onPressed: ()=> Get.offAll(()=>const NavigationMenu()),
            ),
            ),
            child: const Text('Checkout Rs. 3168')),
      ),
    );
  }
}
