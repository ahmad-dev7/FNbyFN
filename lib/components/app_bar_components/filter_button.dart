import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fn_by_fn/pages/filter_page.dart';
import 'package:velocity_x/velocity_x.dart';

class FilterButton extends StatelessWidget {
  const FilterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        PageRouteBuilder(
          opaque: true,
          transitionDuration: 300.milliseconds,
          pageBuilder: (BuildContext context, _, __) {
            return FilterPage();
          },
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(-1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        ),
      ),
      child: SvgPicture.asset("assets/icons/filter.svg", height: 25),
    );
  }
}
