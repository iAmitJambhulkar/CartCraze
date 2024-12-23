import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/brands/cartCardBrand.dart';
import 'package:cartcraze/common/widget/layouts/grid_layout.dart';
import 'package:cartcraze/common/widget/texts/section_heading.dart';
import 'package:cartcraze/features/shop/screens/brands/brand_products.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  cartAppBar(title: Text('Brand',style: Theme.of(context).textTheme.headlineMedium,),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              /// heading
              const cartSectionHeading(title: 'Brands'),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              /// brands
              cartGridLayout(
                  itemCount: 10,
                  mainAxisExtent: 80,
                  itemBuilder: (context,index)=>
                      cartBrandCard(
                        showBorder: true,
                        onTap: ()=> Get.to(() =>const BrandProducts(),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
