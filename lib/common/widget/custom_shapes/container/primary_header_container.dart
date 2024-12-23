import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/color.dart';
import '../curved_edges/curved_edge_widget.dart';
import 'circular_container.dart';

class cartPrimaryHeaderContainer extends StatelessWidget {
  const cartPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return cartCurvedEdgeWidget(
      child: Container(
        color: cartColor.primary,
        child:  Stack(
          children: [
            Positioned(top: -150,right: -250, child: cartCircularContainer(backgroundColor: cartColor.textWhite.withOpacity(0.1),)),
            Positioned(top: 100,right: -300, child: cartCircularContainer(backgroundColor: cartColor.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}
