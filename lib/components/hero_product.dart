import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/product_components/action_button.dart';
import 'package:fn_by_fn/components/product_components/brand_name.dart';
import 'package:fn_by_fn/components/product_components/discount_label.dart';
import 'package:fn_by_fn/components/product_components/price_info.dart';
import 'package:fn_by_fn/components/product_components/product_name.dart';
import 'package:fn_by_fn/components/product_components/rating_stars.dart';
import 'package:fn_by_fn/components/product_components/trending_favorite_header.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:fn_by_fn/data/product_data.dart';
import 'package:velocity_x/velocity_x.dart';

class HeroProduct extends StatelessWidget {
  const HeroProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VxBox(
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/rose.png").py20(),
              ),
              Align(
                alignment: Alignment.topRight,
                child: TrendingFavoriteHeader(
                  isTrending: false,
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ).height(235).color(kImageBackgroundColor).topRounded().make(),
        HeightBox(5),
        Row(
          children: [
            RatingStars(rating: 4.5, starsSize: 18),
            WidthBox(20),
            DiscountLabel(
              discountPercentage: 20,
            ),
          ],
        ),
        ProductName(
          name: "Rose & Patchouli - 150 ML",
          fontSize: 20,
        ),
        BrandName(
          brandName: "EDT",
          fontSize: 16,
        ),
        PriceInfo(
          discountedPrice: 120,
          originalPrice: 180,
          fontSize: 16,
        ),
        HeightBox(5),
        ActionButton(
          productData: productsData[0]!,
          height: 55,
        ),
      ],
    ).px20();
  }
}
