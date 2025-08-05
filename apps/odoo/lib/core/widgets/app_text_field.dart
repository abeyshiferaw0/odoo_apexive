import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({required this.label, super.key, required this.onChange});

  final String label;
  final void Function(String? value) onChange;
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ///
    final colorScheme = Theme.of(context).colorScheme;

    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: () {
        controller.text =
            'Sync with Client, communicate, work on the new design with designer, new tasks preparation call with the front end';
      },
      validator: (String? value) {
        if (value == null || value.trim().isEmpty) {
          return 'Please type in some text';
        }

        return null;
      },
      onChanged: onChange,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: AppSpacing.space14,
          horizontal: AppSpacing.space16,
        ),
        hintStyle: const TextStyle(fontSize: 14),
        hint: Text(
          label,
          style: AppTheme.textTheme(context).bodyLarge?.copyWith(
            color: colorScheme.onSurface,
          ),
        ),

        labelStyle: AppTheme.textTheme(context).bodyLarge?.copyWith(
          color: colorScheme.onSurface,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          borderSide: BorderSide(
            color: colorScheme.outline,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          // Defines the border style when the dropdown is enabled.
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          borderSide: BorderSide(
            color: colorScheme.outline,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space8),
          // Defines the border style when the dropdown is focused.
          borderSide: BorderSide(
            color: colorScheme.outline,
          ),
        ),
      ),
    );
  }
}
