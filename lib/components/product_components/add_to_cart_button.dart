import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback onTap;
  final double height;
  const AddToCartButton({
    super.key,
    required this.onTap,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: VxBox(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset("assets/icons/shopping_bag.svg"),
          WidthBox(5),
          "Add to Cart".text.extraBold.white.make(),
        ],
      )).height(height).color(kPrimaryColor).rounded.make(),
    );
  }
}
