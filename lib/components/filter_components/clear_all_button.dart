import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ClearAllButton extends StatelessWidget {
  final Function() onTap;
  const ClearAllButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: VxBox(
        child: "Clear All".text.size(16).makeCentered(),
      )
          .border(color: kPrimaryColor)
          .margin(EdgeInsets.fromLTRB(0, 12, 12, 12))
          .customRounded(BorderRadius.circular(10))
          .make(),
    );
  }
}
