import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fn_by_fn/data/featured_notes_data.dart';
import 'package:velocity_x/velocity_x.dart';

class FeaturedNotes extends StatelessWidget {
  const FeaturedNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          featuredNotesData.length,
          (index) {
            var data = featuredNotesData[index]!;
            return VxBox(
              child: Stack(
                children: [
                  Positioned(
                    right: -5,
                    bottom: 0,
                    top: 0,
                    child: Image.asset(data.imagePath),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      // padding of 35% of screen width from right side
                      padding: EdgeInsets.fromLTRB(20, 0, context.percentWidth * 35, 0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        minVerticalPadding: 0,
                        title: Row(
                          children: [
                            data.title.text.fontFamily("SpitzkantHead").bold.size(20).white.make(),
                            SvgPicture.asset(data.particlePath),
                          ],
                        ),
                        subtitle: data.subtitle.text.size(11).white.make(),
                      ),
                    ),
                  ),
                ],
              ),
            ).size(double.maxFinite, 130).color(data.color).clip(Clip.hardEdge).roundedLg.make().py(10).px20();
          },
        ),
      ],
    );
  }
}
