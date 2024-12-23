import 'package:carousel_slider/carousel_slider.dart';
import 'package:cartcraze/features/shop/controller/home_controller.dart';
import 'package:cartcraze/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widget/custom_shapes/container/circular_container.dart';
import '../../../../../common/widget/images/cart_rounded_images.dart';
import '../../../../../utils/constants/size.dart';

class cartPromoSlider extends StatelessWidget {

  const cartPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index,_) =>controller.updatePageIndicator(index),
          ),
            items: banners.map((url) => cartRoundImage(imageUrl: url)).toList()
        ),
        const SizedBox(height: cartSizes.spaceBtwItems,),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for(int i =0; i<banners.length; i++)
                  cartCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? cartColor.primary : cartColor.grey,)
                  ],
            ),
          ),
        )
      ],
    );
  }
}
