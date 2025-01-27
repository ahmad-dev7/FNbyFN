import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SectionHeaderText extends StatelessWidget {
  final String title;
  const SectionHeaderText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return title.text.bold.bodyLarge(context).size(20).make().px20();
  }
}
