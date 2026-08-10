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
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isCompact = screenWidth < 700;

    return Container(
      width: isCompact ? double.infinity : 320,
      constraints: BoxConstraints(maxWidth: isCompact ? 420 : 320),
      padding: EdgeInsets.all(isCompact ? OSSpacing.lg : OSSpacing.xl),
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
          Icon(icon, size: isCompact ? 38 : 42, color: OSColors.blue),
          SizedBox(height: isCompact ? OSSpacing.md : OSSpacing.lg),
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
