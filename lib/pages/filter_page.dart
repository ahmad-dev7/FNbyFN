import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fn_by_fn/components/app_bar_components/custom_app_bar.dart';
import 'package:fn_by_fn/components/filter_components/apply_button.dart';
import 'package:fn_by_fn/components/filter_components/clear_all_button.dart';
import 'package:fn_by_fn/components/filter_components/filter_options_and_data.dart';
import 'package:fn_by_fn/components/section_header_text.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:fn_by_fn/data/filter_data.dart';
import 'package:velocity_x/velocity_x.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  int selectedTileIndex = 0;
  int selectedCategory = -1; // Initially no category selected
  List<String> selectedColors = <String>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: CustomAppBar(
        title: "Filters".text.bold.size(16).make(),
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 12, 8),
            child: SvgPicture.asset("assets/icons/back.svg", height: 22),
          ),
        ),
        trailing: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: SvgPicture.asset("assets/icons/close.svg", height: 22),
        ),
      ),
      body: Column(
        children: [
          // Top horizontal divider
          Divider(height: 1, color: kPrimaryColor.withAlpha(20)),
          // Filter Options
          Expanded(
            child: FilterOptionsAndData(
              selectedTileIndex: selectedTileIndex,
              selectedCategory: selectedCategory,
              selectedColors: selectedColors,
              onFilterTileTap: (index) {
                setState(() => selectedTileIndex = index);
              },
              onFilterColorTap: (value) {
                bool isAdded = selectedColors.contains(value);
                setState(
                  () {
                    isAdded
                        ? selectedColors.removeWhere(
                            (color) => color == value,
                          )
                        : selectedColors.add(value);
                  },
                );
              },
              onFilterOptionsTap: (index) {
                setState(() => selectedCategory = index);
              },
            ),
          ),
          // Bottom horizontal divider
          Divider(height: 1, color: kPrimaryColor.withAlpha(20)),
          // Clear All and Apply button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: ClearAllButton(
                    onTap: () {
                      setState(() {
                        selectedCategory = -1;
                        selectedColors.clear();
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ApplyButton(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isDismissible: true,
                        backgroundColor: kBackgroundColor,
                        builder: (context) {
                          return BottomSheet(
                            onClosing: () {},
                            backgroundColor: kBackgroundColor,
                            builder: (context) {
                              return FittedBox(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  spacing: 10,
                                  children: [
                                    SizedBox(height: 10),
                                    SectionHeaderText(title: "Category"),
                                    if (selectedCategory != -1)
                                      Chip(
                                        label: Text(
                                          filterData[0]!
                                              .options[selectedCategory]
                                              .optionLabel,
                                        ),
                                      ),
                                    SectionHeaderText(title: "Colour"),
                                    if (selectedColors.isNotEmpty)
                                      Wrap(
                                        spacing: 15,
                                        runSpacing: 15,
                                        children: [
                                          ...List.generate(
                                            selectedColors.length,
                                            (index) => Chip(
                                              label:
                                                  Text(selectedColors[index]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ).box.height(72).make(),
          ),
        ],
      ),
    );
  }
}
