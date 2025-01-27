class FilterModel {
  final String title;
  final String? subtitle;
  final List<OptionsModel> options;
  final bool isSelected, isMultiSelect;

  FilterModel({
    required this.title,
    required this.options,
    this.subtitle,
    this.isSelected = false,
    this.isMultiSelect = false,
  });
}

class OptionsModel {
  final String optionLabel;
  final int optionValue;

  OptionsModel({
    required this.optionLabel,
    this.optionValue = 0,
  });
}
