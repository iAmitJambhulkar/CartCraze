import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/images/cart_circular_image.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:cartcraze/utils/constants/image_string.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: cartAppBar(showBackArrow: true, title: Text('Profile', style: Theme.of(context).textTheme.headlineMedium),),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              ///profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const cartCircularImage(image: cartImage.sportIcon, width: 80,height: 80,),
                    TextButton(onPressed: (){}, child: const Text('Change Profile Picture'),)
                  ],
                ),
              ),
              ///details
              const SizedBox(height: cartSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: cartSizes.spaceBtwItems,),
              const cartSectionHeading(title: 'Profile Information', showActionButton: false,),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              cartProfileMenu(onPressed: () {  }, title: 'Name', value: 'Amit Jambhulkar',),
              cartProfileMenu(onPressed: () {  }, title: 'Username', value: 'amit2004!',),

              const SizedBox(height: cartSizes.spaceBtwItems /2,),
              const Divider(),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              const cartSectionHeading(title: 'Personal Information', showActionButton: false,),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              cartProfileMenu(onPressed: () {  }, title: 'User ID', value: '67272',icon: Iconsax.copy,),
              cartProfileMenu(onPressed: () {  }, title: 'E-mail', value: 'amit2004j@gmail.com',),
              cartProfileMenu(onPressed: () {  }, title: 'Phone Number', value: '+91 9970099854',),
              cartProfileMenu(onPressed: () {  }, title: 'Gender', value: 'Male',),
              cartProfileMenu(onPressed: () {  }, title: 'Date of Birth', value: '21/07/2004',),

              const Divider(),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              Center(
                child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}


