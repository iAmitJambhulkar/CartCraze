import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/common/widget/brands/cartCardBrand.dart';
import 'package:cartcraze/common/widget/products/sortable/sortable_product.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: cartAppBar(title: Text('Nike', style: Theme.of(context).textTheme.headlineMedium,),),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            children: [
              /// brand detail
              cartBrandCard(showBorder: true),
              SizedBox(height: cartSizes.spaceBtwSection,),
              cartSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
