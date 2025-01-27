import 'package:flutter/material.dart';
import 'package:fn_by_fn/bottom_navigation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationPage(),
    );
  }
}
