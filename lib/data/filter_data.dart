import 'package:fn_by_fn/model/filter_model.dart';

Map<int, FilterModel> filterData = {
  0: FilterModel(
    title: "Categories",
    subtitle: "Select Categories",
    options: [
      OptionsModel(optionLabel: "EDT"),
      OptionsModel(optionLabel: "EDP"),
      OptionsModel(optionLabel: "Musk"),
      OptionsModel(optionLabel: "Mamoul"),
      OptionsModel(optionLabel: "Oud Burner"),
    ],
  ),
  1: FilterModel(
    title: "Colour",
    isMultiSelect: true,
    options: [
      OptionsModel(optionLabel: "Blue", optionValue: 12),
      OptionsModel(optionLabel: "Red", optionValue: 9),
      OptionsModel(optionLabel: "Green", optionValue: 7),
      OptionsModel(optionLabel: "Yellow", optionValue: 1),
      OptionsModel(optionLabel: "Rose Gold", optionValue: 1),
      OptionsModel(optionLabel: "Black Silver", optionValue: 1),
      OptionsModel(optionLabel: "White", optionValue: 1),
      OptionsModel(optionLabel: "Red", optionValue: 9),
      OptionsModel(optionLabel: "Green", optionValue: 7),
      OptionsModel(optionLabel: "Yellow", optionValue: 1),
      OptionsModel(optionLabel: "Rose Gold", optionValue: 1),
    ],
  ),
  2: FilterModel(
    title: "Horoscope",
    options: [
      OptionsModel(optionLabel: "Horoscope"),
    ],
  ),
  3: FilterModel(
    title: "Size",
    options: [
      OptionsModel(optionLabel: "Size"),
    ],
  ),
  4: FilterModel(
    title: "Gender",
    options: [
      OptionsModel(optionLabel: "Gender"),
    ],
  ),
  5: FilterModel(
    title: "Series",
    options: [
      OptionsModel(optionLabel: ""),
    ],
  ),
  6: FilterModel(
    title: "Price Range",
    options: [
      OptionsModel(optionLabel: "Price Range"),
    ],
  ),
  7: FilterModel(
    title: "Discount",
    options: [
      OptionsModel(optionLabel: "Discount"),
    ],
  ),
  8: FilterModel(
    title: "Occasion",
    options: [
      OptionsModel(optionLabel: "Occasion"),
    ],
  ),
  9: FilterModel(
    title: "Ingredients",
    options: [
      OptionsModel(optionLabel: "Ingredients"),
    ],
  ),
};
