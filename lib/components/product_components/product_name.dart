import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductName extends StatelessWidget {
  final double fontSize;
  final String name;
  const ProductName({
    super.key,
    required this.name,
    this.fontSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return name.text.size(fontSize).bold.color(kPrimaryColor).make();
  }
}
