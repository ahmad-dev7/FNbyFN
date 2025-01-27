import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OutlinedIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color iconColor;
  const OutlinedIconButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: VxBox(
        child: Icon(icon, size: 20, color: iconColor),
      ).border(color: iconColor).roundedFull.p4.makeCentered(),
    );
  }
}
