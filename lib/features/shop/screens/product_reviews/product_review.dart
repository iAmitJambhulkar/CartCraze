import 'package:cartcraze/common/widget/appbar/appbar.dart';
import 'package:cartcraze/features/shop/screens/product_reviews/widget/rating_progress_indicator.dart';
import 'package:cartcraze/features/shop/screens/product_reviews/widget/user_review_card.dart';
import 'package:cartcraze/utils/constants/size.dart';
import 'package:flutter/material.dart';
import '../../../../common/widget/products/ratings/rating_indicator.dart';


class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// appbar
      appBar: cartAppBar(
        title: Text('Reviews & Ratings',
            style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: true,
      ),

      /// body
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(cartSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Lorem ipsum, placeholder or dummy text used in typesetting and '
                  'graphic design for previewing layouts.'),
              const SizedBox(height: cartSizes.spaceBtwItems,),

              ///overall product ratings
              const cartOverallProductRating(),
              const cartRatingBarIndicator(rating: 3.5,),
              Text('11,111', style: Theme.of(context).textTheme.bodySmall,),
              const SizedBox(height: cartSizes.spaceBtwSection,),

              ///user review list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),

            ],
          ),
        ),
      ),
    );
  }
}

