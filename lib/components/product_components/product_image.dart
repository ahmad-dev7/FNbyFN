import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductImage extends StatelessWidget {
  final String imagePath;
  const ProductImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 35,
            bottom: 0,
            child: VxBox().size(170, 130).color(kImageBackgroundColor).rounded.make(),
          ),
          Positioned(
            top: 0,
            bottom: 30,
            child: Image.asset(imagePath),
          ),
        ],
      ),
    );
  }
}
