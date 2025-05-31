import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
        children: [
          const TextSpan(text: 'By continuing, you agree to our '),
          TextSpan(
            text: 'Terms of Service',
            style: TextStyle(
              color: AppColors.accentBlue,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Open Terms of Service page
              },
          ),
          const TextSpan(text: ' and '),
          TextSpan(
            text: 'Privacy Policy',
            style: TextStyle(
              color: AppColors.accentBlue,
              fontWeight: FontWeight.w600,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // TODO: Open Privacy Policy page
              },
          ),
          const TextSpan(text: '.'),
        ],
      ),
    );
  }
}
