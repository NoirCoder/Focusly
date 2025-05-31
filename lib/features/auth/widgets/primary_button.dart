import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accentBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 6,
          shadowColor: AppColors.accentBlue.withOpacity(0.6),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.buttonText,
          ),
        ),
      ),
    );
  }
}
