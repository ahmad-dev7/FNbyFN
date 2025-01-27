import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class DiscountLabel extends StatelessWidget {
  final int discountPercentage;
  const DiscountLabel({super.key, required this.discountPercentage});

  @override
  Widget build(BuildContext context) {
    return "$discountPercentage% OFF"
        .text
        .bold
        .color(Color(0xFF902044))
        .make()
        .box
        .color(Color(0x18902043))
        .padding(EdgeInsets.symmetric(horizontal: 6, vertical: 4))
        .roundedSM
        .makeCentered();
  }
}
