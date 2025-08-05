import 'package:app_ui/app_ui.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

/// {@template app_drop_down}
/// A custom dropdown widget that uses the `dropdown_button2` package.
///
/// This widget provides a styled dropdown button with a label, a list of items,
/// and a callback function for when the selected value changes.
/// {@endtemplate}
class AppDropDown extends StatelessWidget {
  /// {@macro app_drop_down}
  const AppDropDown({
    required this.items,
    required this.label,
    super.key,
    this.onChanged,
  });

  /// The label to display as a hint or placeholder in the dropdown.
  final String label;

  /// A list of items to display in the dropdown. Each item is a map
  /// with a 'text' key for the display text and potentially other keys.
  final List<String> items;

  /// A callback function that is called when the selected value changes.
  /// It receives the selected item as a `String?`.
  final void Function(String? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // Uses DropdownButtonFormField2 for enhanced customization options.
    return DropdownButtonFormField2<String>(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: label,
        labelStyle: AppTheme.textTheme(
          context,
        ).bodyLarge?.copyWith(color: colorScheme.onSurface),
        contentPadding: EdgeInsets.symmetric(
          vertical: AppSpacing.space14,
          horizontal: AppSpacing.space4,
        ),
        // Defines the border style for the dropdown.
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          borderSide: const BorderSide(
            color: AppColors
                .lightOutline, // Assuming this is a specific design choice not tied to theme
          ),
        ),
        enabledBorder: OutlineInputBorder(
          // Defines the border style when the dropdown is enabled.
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          borderSide: const BorderSide(
            color: AppColors
                .lightOutline, // Assuming this is a specific design choice not tied to theme
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          // Defines the border style when the dropdown is focused.
          borderSide: const BorderSide(
            color: AppColors
                .lightOutline, // Assuming this is a specific design choice not tied to theme
          ),
        ),
      ),
      hint: Text(
        // The hint text displayed when no item is selected.
        label,
        style: AppTheme.textTheme(context).bodyLarge?.copyWith(
          color: colorScheme.onSurface,
        ),
      ),
      items: items
          .map(
            // Maps the list of items to DropdownMenuItem widgets.
            (String item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: AppTheme.textTheme(context).bodyLarge,
              ),
            ),
          )
          .toList(),
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please select a ${label}';
        }

        return null;
      },
      onChanged: onChanged,
      // Callback for when the selected value changes.
      onSaved: (value) {},
      // Callback for when the form is saved.
      iconStyleData: IconStyleData(
        // Customizes the dropdown icon.
        icon: AppIcons.icons.icDown.svg(
          width: AppSpacing.iconSize20,
          height: AppSpacing.iconSize20,
        ),
        iconSize: AppSpacing.iconSize20,
      ),
      buttonStyleData: ButtonStyleData(
        // Customizes the appearance of the dropdown button itself.
        padding: EdgeInsets.only(
          right: AppSpacing.space8,
        ),
      ),
      dropdownStyleData: DropdownStyleData(
        // Customizes the appearance of the dropdown menu.
        elevation: 0,
        offset: Offset(0, -AppSpacing.space8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          color: AppColors.altBg,
        ),
        // Styling for the dropdown menu items.
      ),
      menuItemStyleData: MenuItemStyleData(
        padding: EdgeInsets.only(left: AppSpacing.space18),
      ),
    );
  }
}
