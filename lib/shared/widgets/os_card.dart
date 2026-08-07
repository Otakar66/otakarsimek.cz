import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class OSCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const OSCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 320),
      padding: const EdgeInsets.all(OSSpacing.xl),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: OSColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 42, color: OSColors.blue),
          const SizedBox(height: OSSpacing.lg),
          Text(title, textAlign: TextAlign.center, style: OSTypography.title),
          const SizedBox(height: OSSpacing.md),
          Text(
            description,
            textAlign: TextAlign.center,
            style: OSTypography.body.copyWith(color: OSColors.secondaryText),
          ),
        ],
      ),
    );
  }
}
