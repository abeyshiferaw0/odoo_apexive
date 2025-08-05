import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_check_box}
/// AppCheckBox widget
/// {@endtemplate}
class AppCheckBox extends StatefulWidget {
  /// {@macro app_check_box}
  const AppCheckBox({
    required this.text,
    required this.value,
    required this.onChanged,
    super.key,
  });

  /// Text of the checkbox
  final String text;
  final bool value;
  final void Function(bool? newValue) onChanged;

  @override
  State<AppCheckBox> createState() => _AppCheckBoxState();
}

class _AppCheckBoxState extends State<AppCheckBox> {
  bool isChecked = false;

  @override
  void initState() {
    // Initialize the checkbox state based on the provided value.
    isChecked = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Get the color scheme from the current theme.
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Theme(
          data: ThemeData(
            checkboxTheme: CheckboxThemeData(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  AppSpacing.space4,
                ),
              ),
            ),
          ),
          child: Transform.scale(
            scale: 1.2,
            child: Checkbox(
              side: BorderSide(
                color: colorScheme.onSurface,
              ),
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = !isChecked;
                });
                // Update the checkbox state and call the onChanged callback.
                widget.onChanged(value);
              },
              checkColor: AppColors.gradient2,
              fillColor: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return colorScheme.onSurface;
                }
                return Colors.transparent;
              }),
            ),
          ),
        ),
        SizedBox(width: AppSpacing.space8),
        Text(
          widget.text,
          style: AppTheme.textTheme(context).bodyLarge,
        ),
      ],
    );
  }
}
