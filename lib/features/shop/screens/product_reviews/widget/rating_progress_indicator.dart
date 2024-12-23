import 'package:cartcraze/features/shop/screens/product_reviews/widget/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class cartOverallProductRating extends StatelessWidget {
  const cartOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3 ,child: Text('3.5', style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              cartRatingProgressIndicator(text: '5', value: 0.2,),
              cartRatingProgressIndicator(text: '4', value: 0.1,),
              cartRatingProgressIndicator(text: '3', value: 0.9,),
              cartRatingProgressIndicator(text: '2', value: 0.3,),
              cartRatingProgressIndicator(text: '1', value: 0.5,),
            ],
          ),
        )
      ],
    );
  }
}

