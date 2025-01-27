import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/product_components/discount_label.dart';
import 'package:fn_by_fn/components/product_components/rating_stars.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingsAndDiscountSection extends StatelessWidget {
  final int discountPercentage;
  final double rating;
  const RatingsAndDiscountSection({
    super.key,
    required this.discountPercentage,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RatingStars(rating: rating),
        DiscountLabel(
          discountPercentage: discountPercentage,
        ),
      ],
    ).px1();
  }
}
