import 'package:flutter/material.dart';

class FooterImages extends StatelessWidget {
  const FooterImages({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> footerImages = [
      'assets/images/footer_1.png',
      'assets/images/footer_2.png',
      'assets/images/new_perfume_collection.png'
    ];
    return SizedBox(
      height: 300,
      child: PageView.builder(
        padEnds: false,
        controller: PageController(viewportFraction: 0.9),
        itemCount: footerImages.length,
        itemBuilder: (context, index) {
          var isLast = index == (footerImages.length - 1);
          var isFirst = index == 0;
          return Padding(
            padding: EdgeInsets.only(
              left: isFirst ? 20 : 8,
              right: isLast ? 20 : 8,
            ),
            child: Image.asset(
              footerImages[index],
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
