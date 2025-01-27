import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/product_components/product.dart';
import 'package:fn_by_fn/data/product_data.dart';
import 'package:velocity_x/velocity_x.dart';

class ScrollableProductsList extends StatelessWidget {
  final bool isReversed;
  const ScrollableProductsList({super.key, this.isReversed = false});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 15,
        children: [
          ...List.generate(
            productsData.length,
            (index) {
              dynamic data;
              if (isReversed) {
                data = productsData.values.toList().reversed.toList();
              } else {
                data = productsData;
              }

              return Product(
                productData: data[index],
              );
            },
          ),
        ],
      ).px20(),
    );
  }
}
