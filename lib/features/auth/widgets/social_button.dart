import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;

  const SocialButton({
    super.key,
    required this.iconPath,
    required this.text,
    required this.onTap,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black, // Default to black
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 1,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                iconPath,
                height: 20,
              ),
              const SizedBox(width: 12),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
