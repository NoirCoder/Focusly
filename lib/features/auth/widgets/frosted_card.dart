import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../core/theme/app_colors.dart';

class FrostedCard extends StatelessWidget {
  final Widget child;

  const FrostedCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.glassWhite,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white24, width: 1.5),
          ),
          child: child,
        ),
      ),
    );
  }
}
