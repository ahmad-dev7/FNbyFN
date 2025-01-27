import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/outlined_icon_button.dart';
import 'package:fn_by_fn/components/section_header_text.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductSectionHeader extends StatelessWidget {
  final String title;

  const ProductSectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeaderText(title: title),
        SizedBox(
          child: Wrap(
            children: [
              OutlinedIconButton(
                onTap: () {},
                icon: Icons.arrow_back_ios_new,
                iconColor: kSecondaryColor,
              ),
              WidthBox(15),
              OutlinedIconButton(
                onTap: () {},
                icon: Icons.arrow_forward_ios,
                iconColor: kPrimaryColor,
              )
            ],
          ),
        ).px20(),
      ],
    );
  }
}
