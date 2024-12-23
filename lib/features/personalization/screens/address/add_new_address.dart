import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const cartAppBar(showBackArrow: true, title: Text('Add new Address'),),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.user),
                      labelText: 'Name'),),
                const SizedBox(height: cartSizes.spaceBtwInputField,),

                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.mobile),
                      labelText: 'Phone Number'),),
                const SizedBox(height: cartSizes.spaceBtwInputField,),

                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.buildings_2,), labelText: 'Street'),)),
                    const SizedBox(width: cartSizes.spaceBtwInputField,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code,), labelText: 'Postal Code'),)),
                  ],
                ),
                const SizedBox(height: cartSizes.spaceBtwInputField,),

                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building,), labelText: 'City'),)),
                    const SizedBox(width: cartSizes.spaceBtwInputField,),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity,), labelText: 'State'),)),
                  ],
                ),
                const SizedBox(height: cartSizes.spaceBtwInputField,),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global,), labelText: 'Country'),),
                const SizedBox(height: cartSizes.defaultSpace,),

                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Save')),)

              ],
            ),
          ),
        ),
      ),
    );
  }
}
