import 'package:flutter/material.dart';
import 'package:fn_by_fn/components/app_bar_components/cart_button.dart';
import 'package:fn_by_fn/components/app_bar_components/custom_app_bar.dart';
import 'package:fn_by_fn/components/app_bar_components/filter_button.dart';
import 'package:fn_by_fn/components/collection_branding.dart';
import 'package:fn_by_fn/components/featured_notes.dart';
import 'package:fn_by_fn/components/hero_product.dart';
import 'package:fn_by_fn/components/home_page_components/footer_images.dart';
import 'package:fn_by_fn/components/product_components/product_section_header.dart';
import 'package:fn_by_fn/components/scrollable_products_list.dart';
import 'package:fn_by_fn/components/section_header_text.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:fn_by_fn/data/collection_branding_data.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:fn_by_fn/components/home_page_components/hero_section_components/hero_section.dart';
import 'package:fn_by_fn/components/home_page_components/types_avatar_components/types_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: CustomAppBar(
        title: Image.asset(
          "assets/images/logo.png",
          height: 30,
        ).box.makeCentered(),
        leading: FilterButton(),
        trailing: CartButton(onTap: () {}),
      ),
      body: ListView(
        children: [
          HeightBox(10),
          //* Hero Section
          HeroSection(),
          HeightBox(20),
          //* Types Avatar
          TypesAvatar(),
          HeightBox(20),
          //* New Arrivals
          ProductSectionHeader(title: "New Arrivals"),
          HeightBox(20),
          ScrollableProductsList(),
          HeightBox(25),
          ScrollableProductsList(isReversed: true),
          //* Featured Notes
          HeightBox(30),
          SectionHeaderText(title: "Featured"),
          HeightBox(10),
          FeaturedNotes(),
          //* Hero Product
          HeightBox(30),
          HeroProduct(),
          HeightBox(30),
          CollectionBranding(
            height: 300,
            title: collectionBrandingData[2]!.title,
            subtitle: collectionBrandingData[2]!.subtitle,
            imagePath: collectionBrandingData[2]!.imagePath,
          ),
          HeightBox(30),
          //* Home Fragnances
          ProductSectionHeader(title: "Home Fragnances"),
          HeightBox(20),
          ScrollableProductsList(),
          HeightBox(25),
          ScrollableProductsList(isReversed: true),
          //* Footer Images
          HeightBox(40),
          FooterImages(),
          HeightBox(30),
        ],
      ),
    );
  }
}
