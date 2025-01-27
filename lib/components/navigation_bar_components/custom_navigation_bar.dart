import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fn_by_fn/constants/bottom_navigation_bar_items.dart';
import 'package:fn_by_fn/constants/colors.dart';

class CustomNavigationBar extends StatelessWidget {
  final Function(int) onTap;
  final int activeIndex;
  const CustomNavigationBar({super.key, required this.onTap, required this.activeIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      currentIndex: activeIndex,
      onTap: onTap,
      items: List.generate(
        kNavigationBarItems.length,
        (index) {
          bool isActive = index == activeIndex;
          return BottomNavigationBarItem(
            label: '', // Label can't be null
            icon: SvgPicture.asset(
              kNavigationBarItems[index]!.iconPath,
              height: isActive ? 25 : 24,
              colorFilter: ColorFilter.mode(
                isActive ? kPrimaryColor : kSecondaryColor,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      ),
    );
  }
}
