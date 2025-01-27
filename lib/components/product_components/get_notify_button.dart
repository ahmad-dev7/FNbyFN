import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class GetNotifyButton extends StatelessWidget {
  final VoidCallback onTap;
  final double height;
  const GetNotifyButton({
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
        child: "Get Notify".text.semiBold.color(kPrimaryColor).makeCentered(),
      ).height(height).white.border(color: kPrimaryColor).rounded.make(),
    );
  }
}
