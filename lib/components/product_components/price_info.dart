import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class PriceInfo extends StatelessWidget {
  final double discountedPrice, originalPrice, fontSize;
  const PriceInfo({
    super.key,
    required this.discountedPrice,
    required this.originalPrice,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        "KWD".text.size(fontSize).make(),
        discountedPrice.floor().text.size(fontSize).extraBold.make(),
        originalPrice.floor().text.size(fontSize).color(kSecondaryColor).lineThrough.make(),
      ],
    );
  }
}
