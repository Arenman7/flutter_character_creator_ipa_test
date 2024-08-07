import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';
import 'package:flutter_rpg/theme.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledTextField extends StatelessWidget {
  const StyledTextField({
    super.key,
    required this.prefixIcon,
    required this.label,
    required this.controller,
  });

  final Icon prefixIcon;
  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style:
          GoogleFonts.kanit(textStyle: Theme.of(context).textTheme.bodyMedium),
      cursorColor: AppColors.textColor,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        label: StyledText(label),
      ),
    );
  }
}
