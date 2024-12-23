import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/features/shop/screens/order/widget/orders_list.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///appbar
      appBar: cartAppBar(title: Text('My Order', style: Theme.of(context).textTheme.headlineMedium,),showBackArrow: true,),
      body: const Padding(padding: EdgeInsets.all(cartSizes.defaultSpace),
      ///order
      child: cartOrdersListItems(),
      ),
    );
  }
}
