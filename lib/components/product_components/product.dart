import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/product_components/action_button.dart';
import 'package:fn_by_fn/components/product_components/brand_name.dart';
import 'package:fn_by_fn/components/product_components/price_info.dart';
import 'package:fn_by_fn/components/product_components/product_image.dart';
import 'package:fn_by_fn/components/product_components/product_name.dart';
import 'package:fn_by_fn/components/product_components/ratings_discount_section.dart';
import 'package:fn_by_fn/components/product_components/trending_favorite_header.dart';
import 'package:fn_by_fn/model/product_model.dart';
import 'package:velocity_x/velocity_x.dart';

class Product extends StatelessWidget {
  final ProductModel productData;

  const Product({
    super.key,
    required this.productData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trending and fav row
          TrendingFavoriteHeader(
            isTrending: productData.isTrending,
          ),
          HeightBox(5),
          // Image
          ProductImage(imagePath: productData.imagePath),
          HeightBox(5),
          // Ratings & Discount row
          RatingsAndDiscountSection(
            discountPercentage: productData.discountPercentage,
            rating: productData.rating,
          ),
          // Product Name
          ProductName(name: productData.name),
          // Brand Name
          BrandName(brandName: productData.brandName),
          // Price info
          PriceInfo(
            discountedPrice: productData.discountedPrice,
            originalPrice: productData.originalPrice,
          ),
          HeightBox(10),
          // Action Button
          ActionButton(productData: productData)
        ],
      ),
    );
  }
}
