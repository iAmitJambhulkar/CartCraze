import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/features/personalization/screens/address/add_new_address.dart';
import 'package:cartcraze/features/personalization/screens/address/widget/single_address.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: cartColor.white,),
      ),
      appBar: cartAppBar(
        showBackArrow: true,
        title: Text('Address', style: Theme.of(context).textTheme.headlineMedium,),
      ),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              SingleAddress(selectedAddress: true),
              SingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
