import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/navigation_bar_components/custom_navigation_bar.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:fn_by_fn/pages/favorite_page.dart';
import 'package:fn_by_fn/pages/home_page.dart';
import 'package:fn_by_fn/pages/profile_page.dart';
import 'package:fn_by_fn/pages/search_page.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex = 0;
  int totalItems = 2;
  final List<Widget> pages = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: IndexedStack(
        index: currentIndex,
        children: pages,
      ),
      bottomNavigationBar: CustomNavigationBar(
        onTap: (index) => setState(() => currentIndex = index),
        activeIndex: currentIndex,
      ),
    );
  }
}
