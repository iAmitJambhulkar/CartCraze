import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

import '../../../../common/widget/products/sortable/sortable_product.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: cartAppBar(title: Text('Popular Products',),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(cartSizes.defaultSpace),
        child: cartSortableProducts(),
        ),
      ),
    );
  }
}

