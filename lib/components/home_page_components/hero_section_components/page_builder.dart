import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/collection_branding.dart';
import 'package:fn_by_fn/data/collection_branding_data.dart';

class PageBuilder extends StatelessWidget {
  final PageController pageController;
  const PageBuilder({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: collectionBrandingData.length,
      physics: ScrollPhysics(),
      itemBuilder: (ctx, index) {
        var data = collectionBrandingData[index]!;
        return CollectionBranding(
          title: data.title,
          subtitle: data.subtitle,
          imagePath: data.imagePath,
        );
      },
    );
  }
}
