import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/home_page_components/types_avatar_components/types_avatar_image.dart';
import 'package:fn_by_fn/components/home_page_components/types_avatar_components/types_avatar_label.dart';
import 'package:fn_by_fn/data/types_avatar_data.dart';

class TypesAvatar extends StatelessWidget {
  const TypesAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    double outerAvatarRadius = 38;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            typesAvatarData.length,
            (index) {
              var data = typesAvatarData[index]!;
              return Padding(
                padding: EdgeInsets.only(right: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Avatar
                    TypesAvatarImage(
                      outerAvatarRadius: outerAvatarRadius,
                      imagePath: data.imagePath,
                    ),
                    const SizedBox(height: 5), // Space between avatar and label
                    // Label
                    TypesAvatarLabel(
                      outerAvatarRadius: outerAvatarRadius,
                      label: data.label,
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
