import 'package:flutter/material.dart';
import 'package:fn_by_fn/data/collection_branding_data.dart';
import 'package:velocity_x/velocity_x.dart';

class PageIndicator extends StatelessWidget {
  final int activeIndex;
  const PageIndicator({super.key, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          ...List.generate(
            collectionBrandingData.length,
            (index) {
              bool isActive = activeIndex == index;
              return VxBox()
                  .color(
                    isActive ? Colors.white : Colors.white30,
                  )
                  .roundedLg
                  .shadow
                  .size(25, 3)
                  .make()
                  .px4();
            },
          ),
        ],
      ),
    );
  }
}
