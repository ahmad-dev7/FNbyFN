import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class TypesAvatarLabel extends StatelessWidget {
  final double outerAvatarRadius;
  final String label;
  const TypesAvatarLabel({super.key, required this.outerAvatarRadius, required this.label});

  @override
  Widget build(BuildContext context) {
    return label.text
        .color(kSecondaryColor)
        .size(13)
        .align(TextAlign.center)
        .make()
        .box
        .width(outerAvatarRadius * 2)
        .make();
  }
}
