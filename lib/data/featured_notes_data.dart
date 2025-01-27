import 'package:flutter/material.dart';
import 'package:fn_by_fn/model/featured_notes_model.dart';

Map<int, FeaturedNotesModel> featuredNotesData = {
  0: FeaturedNotesModel(
    title: "Woody Note",
    subtitle: "A Symphony of Earthy, Warm, and Timeless Fragrance",
    imagePath: "assets/images/woody_note.png",
    particlePath: "assets/icons/woody_note_particle.svg",
    color: Color(0xFFAE765F),
  ),
  1: FeaturedNotesModel(
    title: "Sandle Wood",
    subtitle: "A Luxurious Blend of Creamy, Woody, & Calming Essence",
    imagePath: "assets/images/sangle_wood.png",
    particlePath: "assets/icons/sandle_wood_particle.svg",
    color: Color(0xFF85595E),
  ),
  2: FeaturedNotesModel(
    title: "Cotton Candy",
    subtitle: "A Sweet, Playful Blend of Sugary and Dreamy Aromas",
    imagePath: "assets/images/cotton_candy.png",
    particlePath: "assets/icons/cotton_candy_particle.svg",
    color: Color(0xFFCD6937),
  ),
};
