import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/home_page_components/hero_section_components/page_builder.dart';
import 'package:fn_by_fn/components/home_page_components/hero_section_components/page_indicator.dart';
import 'package:fn_by_fn/data/collection_branding_data.dart';
import 'package:velocity_x/velocity_x.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  final PageController pageController = PageController();
  int activeHero = 0;
  late Timer autoPlayTimer;

  @override
  void initState() {
    super.initState();
    startAutoPlay();
    pageController.addListener(() {
      setState(() {
        activeHero = pageController.page?.round() ?? 0;
      });
    });
  }

  startAutoPlay() {
    autoPlayTimer = Timer.periodic(
      8.seconds,
      (timer) {
        if (collectionBrandingData.length - 1 == activeHero) {
          pageController.animateToPage(
            0,
            duration: 1.seconds,
            curve: Curves.decelerate,
          );
        } else {
          pageController.nextPage(
            duration: 500.milliseconds,
            curve: Curves.easeIn,
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxHeight: 200),
      child: Stack(
        children: [
          PageBuilder(pageController: pageController),
          Align(
            alignment: Alignment.bottomRight,
            child: PageIndicator(activeIndex: activeHero),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    autoPlayTimer.cancel();
    super.dispose();
  }
}
