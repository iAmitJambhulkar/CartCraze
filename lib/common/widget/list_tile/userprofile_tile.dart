import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/color.dart';
import '../../../utils/constants/image_string.dart';
import '../images/cart_circular_image.dart';

class cartUserProfileTile extends StatelessWidget {
  const cartUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const cartCircularImage(
        image: cartImage.userImg,
        width: 60,
        height: 60,
        padding: 0,
      ),
      title: Text(
        'Amit Jambhulkar',
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: cartColor.white),
        maxLines: 1,
      ),
      subtitle: Text(
        'amit2004j@gmail.com',
        style: Theme.of(context).textTheme.bodyMedium!.apply(color: cartColor.white),
        maxLines: 1,
      ),
      trailing: IconButton(onPressed: onPressed, icon: const Icon(Iconsax.edit, color: cartColor.white,), ),
    );
  }
}
