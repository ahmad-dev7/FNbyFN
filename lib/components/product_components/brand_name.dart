import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class BrandName extends StatelessWidget {
  final String brandName;
  final double fontSize;
  const BrandName({
    super.key,
    required this.brandName,
    this.fontSize = 15,
  });

  @override
  Widget build(BuildContext context) {
    return brandName.text.size(fontSize).color(kSecondaryColor).make();
  }
}
