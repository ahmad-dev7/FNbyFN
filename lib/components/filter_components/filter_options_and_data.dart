import 'package:flutter/material.dart';
import 'package:fn_by_fn/constants/colors.dart';
import 'package:fn_by_fn/data/filter_colors_data.dart';
import 'package:fn_by_fn/data/filter_data.dart';
import 'package:velocity_x/velocity_x.dart';

class FilterOptionsAndData extends StatelessWidget {
  final int selectedTileIndex;
  final int selectedCategory;
  final List selectedColors;
  final Function(String) onFilterColorTap;
  final Function(int) onFilterTileTap, onFilterOptionsTap;
  const FilterOptionsAndData({
    super.key,
    required this.selectedTileIndex,
    required this.selectedCategory,
    required this.selectedColors,
    required this.onFilterTileTap,
    required this.onFilterColorTap,
    required this.onFilterOptionsTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Filter options
        Expanded(
          flex: 2,
          child: ListView(
            children: [
              ...List.generate(
                filterData.length,
                (index) {
                  bool isSelected = selectedTileIndex == index;
                  return ListTile(
                    onTap: () => onFilterTileTap(index),
                    tileColor: isSelected ? kPrimaryColor : kBackgroundColor,
                    // To display selected item filter counts for multi select filters eg [colors]
                    trailing: filterData[index]!.isMultiSelect &&
                            selectedColors.isNotEmpty
                        ? VxBox(
                            child: selectedColors.length.text
                                .size(15)
                                .color(isSelected ? Vx.black : Vx.white)
                                .makeCentered(),
                          )
                            .size(25, 25)
                            .color(isSelected ? Vx.white : Vx.black)
                            .roundedFull
                            .make()
                        : null,
                    title: filterData[index]!
                        .title
                        .text
                        .color(isSelected ? kBackgroundColor : kPrimaryColor)
                        .make(),
                  );
                },
              ),
            ],
          ),
        ),
        VerticalDivider(width: 1, color: kPrimaryColor.withAlpha(20)),
        // Filter data
        Expanded(
          flex: 3,
          child: ListView(
            children: [
              // Subtitle if it is given
              if (!filterData[selectedTileIndex]!.subtitle.isEmptyOrNull)
                filterData[selectedTileIndex]!
                    .subtitle!
                    .text
                    .size(16)
                    .color(kSecondaryColor)
                    .make()
                    .box
                    .height(50)
                    .px16
                    .alignCenterLeft
                    .make(),
              ...List.generate(
                filterData[selectedTileIndex]!.options.length,
                (index) {
                  //* For categories filter
                  if (filterData[selectedTileIndex]!.title == "Categories") {
                    var isSelected = selectedCategory == index;
                    return ListTile(
                      horizontalTitleGap: 12,
                      onTap: () => onFilterOptionsTap(index),
                      title:
                          filterData[0]!.options[index].optionLabel.text.make(),
                      leading: Icon(
                        isSelected
                            ? Icons.radio_button_checked
                            : Icons.radio_button_off,
                        size: 30,
                      ),
                    );
                  }
                  //* For color filter
                  else if (filterData[selectedTileIndex]!.title == "Colour") {
                    var optionsInfo =
                        filterData[selectedTileIndex]!.options[index];
                    var isAdded =
                        selectedColors.contains(optionsInfo.optionLabel);
                    return ListTile(
                      horizontalTitleGap: 12,
                      onTap: () => onFilterColorTap(optionsInfo.optionLabel),
                      title:
                          "${optionsInfo.optionLabel} (${optionsInfo.optionValue})"
                              .text
                              .make(),
                      leading: VxBox(
                        child: isAdded
                            ? Icon(
                                Icons.check,
                                color: optionsInfo.optionLabel == "White"
                                    ? Colors.black
                                    : Colors.white,
                              )
                            : null,
                      )
                          .size(30, 30)
                          .shadowXs
                          .color(filterColour[optionsInfo.optionLabel]!)
                          .roundedSM
                          .make(),
                    );
                  } else {
                    //* Default filter
                    return filterData[selectedTileIndex]!
                        .title
                        .text
                        .makeCentered()
                        .py(100);
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
