import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/appbar/tabbar.dart';
import 'package:cartcraze/common/widget/custom_shapes/container/search_container.dart';
import 'package:cartcraze/common/widget/layouts/grid_layout.dart';
import 'package:cartcraze/common/widget/products/cart/cart_menu_icon.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/features/shop/screens/brands/all_brands.dart';
import 'package:cartcraze/features/shop/screens/store/widget/category_tab.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../common/widget/brands/cartCardBrand.dart';
import '../../../../utils/constants/color.dart';
import '../../../../utils/helpers/helper_function.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = cartHelperFunctions.isDarkMode(context);

    return DefaultTabController(
      length:5,
      child: Scaffold(
        ///app bar
      
        appBar: cartAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            cartCounterIcon(onPressed: (){}, iconColor: dark ?cartColor.white : cartColor.dark,)
          ],
        ),
        body: NestedScrollView(
          /// header
            headerSliverBuilder:(_, innerBoxIsScrolled){
          return[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: cartHelperFunctions.isDarkMode(context) ? cartColor.black: cartColor.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                  padding:const EdgeInsets.all(cartSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
      
                    /// searchbar
                    const SizedBox(height: cartSizes.spaceBtwItems,),
                    const cartSearchContainer(text: 'Search in Store', showBorder: true, showBackground: false, padding: EdgeInsets.zero,),
                    const SizedBox(height: cartSizes.spaceBtwSection,),
      
                    /// brands
                    cartSectionHeading(title: 'Featured Brands',  onPressed: () => Get.to(()=> const AllBrandsScreen(),)),
                    const SizedBox(height: cartSizes.spaceBtwItems/ 1.5,),
      
                    /// brand grid
                    cartGridLayout(itemCount: 4,mainAxisExtent: 80,itemBuilder: (_,index){
                      return const cartBrandCard(showBorder: true,);
                    })
      
                  ],
                ),
              ),
              /// tabs
      
              bottom: const cartTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Clothes')),
                    Tab(child: Text('Cosmetic')),
                  ]
              )
            )
          ];
        }, body:  const TabBarView(
            children: [
              cartCategoryTab(),
              cartCategoryTab(),
              cartCategoryTab(),
              cartCategoryTab(),
              cartCategoryTab(),
            ],
        ),
        ),
      ),
    );
  }
}





