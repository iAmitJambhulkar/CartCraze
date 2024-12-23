import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/custom_shapes/container/primary_header_container.dart';
import 'package:cartcraze/common/widget/list_tile/setting_menu_tile.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/features/personalization/screens/address/address.dart';
import 'package:cartcraze/features/personalization/screens/profile/profile.dart';
import 'package:cartcraze/features/shop/screens/order/order.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widget/list_tile/userprofile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Column(
        children: [
          ///header
          cartPrimaryHeaderContainer(
            child: Column(
              children: [
                ///appbar
                cartAppBar(
                  title: Text('Account',
                    style: Theme.of(context).textTheme.headlineMedium!.apply(color: cartColor.white),
                  ),
                ),
                const SizedBox(height: cartSizes.spaceBtwSection,),

                ///user profile card
                cartUserProfileTile(onPressed: ()=> Get.to(()=>const ProfileScreen()),),
                const SizedBox(height: cartSizes.spaceBtwSection,),
              ],
            )
          ),
          ///body
          Padding(
              padding: const EdgeInsets.all(cartSizes.defaultSpace),
            child: Column(
              children: [
                /// account settings
                const cartSectionHeading(title: 'Account Settings', showActionButton: false,),
                const SizedBox(height: cartSizes.spaceBtwItems,),

                cartSettingMenuTile(icon: Iconsax.safe_home, text: 'My Address', subTitle: 'Set shopping delivery address', onTap: ()=> Get.to(() => const UserAddressScreen()),),
                cartSettingMenuTile(icon: Iconsax.shopping_cart, text: 'My Cart', subTitle: 'Add, remove products and move to checkout', onTap: (){},),
                cartSettingMenuTile(icon: Iconsax.bag_tick, text: 'My Orders', subTitle: 'In-progress and Completed Orders', onTap: ()=> Get.to(() => const OrderScreen()),),
                cartSettingMenuTile(icon: Iconsax.bank, text: 'Bank Account', subTitle: 'Withdraw balance to registered bank account', onTap: (){},),
                cartSettingMenuTile(icon: Iconsax.discount_shape, text: 'My Coupons', subTitle: 'List of all discounted coupons', onTap: (){},),
                cartSettingMenuTile(icon: Iconsax.notification, text: 'Notifications', subTitle: 'Set any kind of notification message', onTap: (){},),
                cartSettingMenuTile(icon: Iconsax.security_card, text: 'Account Privacy', subTitle: 'Manage data usage and connected account', onTap: (){},),

                const SizedBox(height: cartSizes.spaceBtwSection,),
                const cartSectionHeading(title: 'App Settings', showActionButton: false,),
                const SizedBox(height: cartSizes.spaceBtwItems,),

                const cartSettingMenuTile(icon: Iconsax.document_upload, text: 'Load Data', subTitle: 'Upload data to your Cloud Firebase'),
                cartSettingMenuTile(icon: Iconsax.location, text: 'Geolocation', subTitle: 'Set recommendation based on location', trailing: Switch(value: true, onChanged: (value){}),),
                cartSettingMenuTile(icon: Iconsax.security_user, text: 'Safe Mode', subTitle: 'Search result is safe for all ages',trailing: Switch(value: false, onChanged: (value){})),
                cartSettingMenuTile(icon: Iconsax.image, text: 'HD Image Quality', subTitle: 'Set Image quality to be seen',trailing: Switch(value: false, onChanged: (value){})),

                /// logout button

                const SizedBox(height: cartSizes.spaceBtwSection,),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                ),
                const SizedBox(height: cartSizes.spaceBtwSection *2.5,)
              ],
            ),
          )
        ],
      ),
    ),);
  }
}

