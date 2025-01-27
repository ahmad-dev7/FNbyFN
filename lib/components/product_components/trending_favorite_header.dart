import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

class TrendingFavoriteHeader extends StatefulWidget {
  final bool isTrending;
  final double iconSize;
  const TrendingFavoriteHeader({
    super.key,
    required this.isTrending,
    this.iconSize = 24,
  });

  @override
  State<TrendingFavoriteHeader> createState() => _TrendingFavoriteHeaderState();
}

class _TrendingFavoriteHeaderState extends State<TrendingFavoriteHeader> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (widget.isTrending)
          "Trending"
              .text
              .make()
              .box
              .padding(EdgeInsets.symmetric(vertical: 5, horizontal: 10))
              .color(Color(0xFFF8C6B8))
              .rightRounded()
              .makeCentered(),
        Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => setState(() => isFavorite = !isFavorite),
          child: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.redAccent : kSecondaryColor,
            size: widget.iconSize,
          ).p4(),
        ),
        //Icon(Icons.favorite_outline, color: kSecondaryColor).p(4)
      ],
    );
  }
}
