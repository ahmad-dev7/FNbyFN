import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class TypesAvatarImage extends StatelessWidget {
  final double outerAvatarRadius;
  final String imagePath;
  const TypesAvatarImage({super.key, required this.outerAvatarRadius, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outerAvatarRadius,
      backgroundColor: Colors.white,
      child: VxBox(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 15,
              bottom: 0,
              child: Image.asset(imagePath),
            ),
          ],
        ),
      )
          .width((outerAvatarRadius * 2) - 5)
          .clip(Clip.hardEdge)
          .color(kBackgroundColor)
          .border(color: Colors.black12)
          .roundedFull
          .make(),
    ).box.border(color: Colors.black26).roundedFull.make();
  }
}
