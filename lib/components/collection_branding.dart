import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class CollectionBranding extends StatelessWidget {
  final String title, subtitle, imagePath;
  final double height;
  const CollectionBranding({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    this.height = double.maxFinite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: height,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: ListTile(
        minVerticalPadding: 0,
        contentPadding: const EdgeInsets.fromLTRB(20, 0, 100, 20),
        title: title.text.bold.lineHeight(1).size(26).white.shadow(0, 1, 10, kSecondaryColor).make(),
        subtitle: subtitle.text.lineHeight(1.5).shadow(0, 1, 10, kSecondaryColor).white.make(),
      ),
    );
  }
}
