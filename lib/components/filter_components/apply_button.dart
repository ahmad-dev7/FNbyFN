import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ApplyButton extends StatelessWidget {
  final Function() onTap;
  const ApplyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: VxBox(
        child: "Apply".text.white.size(16).makeCentered(),
      ).margin(EdgeInsets.fromLTRB(12, 12, 0, 12)).color(kPrimaryColor).customRounded(BorderRadius.circular(10)).make(),
    );
  }
}
