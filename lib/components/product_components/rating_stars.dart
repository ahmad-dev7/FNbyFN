import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:velocity_x/velocity_x.dart';

class RatingStars extends StatelessWidget {
  final double starsSize;
  final double rating; // Rating value between 0.0 to 5.0

  const RatingStars({
    super.key,
    required this.rating,
    this.starsSize = 12,
  }) : assert(rating >= 0.0 && rating <= 5.0);

  @override
  Widget build(BuildContext context) {
    int fullStars = rating.floor(); // Number of filled stars

    bool hasHalfStar = rating - fullStars > 0; // Whether to include a half star

    return Row(
      //mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // For full stars
        for (int i = 0; i < fullStars; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: SvgPicture.asset(
              "assets/icons/full_star.svg",
              height: starsSize,
            ).px1(),
          ),
        // For half stars
        if (hasHalfStar)
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: SvgPicture.asset(
              "assets/icons/half_star.svg",
              height: starsSize,
            ).px1(),
          ),
        WidthBox(2),
        // Rating value
        rating.toStringAsFixed(1).text.size(starsSize + 2).semiBold.make()
      ],
    );
  }
}
