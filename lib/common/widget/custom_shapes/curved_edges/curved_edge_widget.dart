import 'package:flutter/cupertino.dart';

import 'curved_egde.dart';

class cartCurvedEdgeWidget extends StatelessWidget {
  const cartCurvedEdgeWidget({
    super.key, this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: cartCustomCurvedEdges(),
      child: child,
    );
  }
}