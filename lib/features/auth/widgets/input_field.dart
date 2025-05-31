import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;
  final TextInputType keyboardType;

  const InputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.obscureText = false,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: TextStyle(color: AppColors.textPrimary),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.inputFill,
        prefixIcon: Icon(prefixIcon, color: AppColors.textSecondary),
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.textSecondary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
      ),
    );
  }
}
