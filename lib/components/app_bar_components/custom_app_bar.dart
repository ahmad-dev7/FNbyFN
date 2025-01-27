import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title, leading, trailing;
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      scrolledUnderElevation: 0,
      backgroundColor: kBackgroundColor,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: ListTile(
          minTileHeight: 45,
          horizontalTitleGap: 12,
          minVerticalPadding: 2,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          title: title,
          leading: leading,
          trailing: trailing,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}
