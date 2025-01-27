import 'package:flutter/material.dart';

class FeaturedNotesModel {
  final String title, subtitle, imagePath, particlePath;
  final Color color;

  FeaturedNotesModel({
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.particlePath,
    required this.color,
  });
}
