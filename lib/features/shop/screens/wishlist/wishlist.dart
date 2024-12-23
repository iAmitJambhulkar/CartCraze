import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/icons/circular_icon.dart';
import 'package:cartcraze/common/widget/layouts/grid_layout.dart';
import 'package:cartcraze/common/widget/products/product_cards/product_card_vertical.dart';
import 'package:cartcraze/features/shop/screens/home/home.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: cartAppBar(
        title: Text('Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          cartCircularIcon(icon: Iconsax.add, onPressed: () => Get.to(const HomeScreen()),),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              cartGridLayout(itemCount: 4, itemBuilder: (_, index) => const cartProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}
