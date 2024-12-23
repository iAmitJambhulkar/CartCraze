
import 'package:cartcraze/features/shop/screens/sub_category/sub_category.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widget/image_text_widget/vertical_image_text.dart';
import '../../../../../utils/constants/image_string.dart';

class cartHomeCategories extends StatelessWidget {
  const cartHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index){
            return cartVerticalImageText(image: cartImage.shoeIcon, title: 'Shoe',onTap: ()=> Get.to(()=> const cartSubCategoryScreen()), );
          }
      ),
    );
  }
}