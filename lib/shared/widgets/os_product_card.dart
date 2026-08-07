import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import 'os_button.dart';

class OSProductCard extends StatelessWidget {
  final String imagePath;
  final String screenshotPath;
  final String title;
  final String description;
  final String buttonText;
  final VoidCallback? onPressed;
  final bool available;

  const OSProductCard({
    super.key,
    required this.imagePath,
    required this.screenshotPath,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.onPressed,
    this.available = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 420,
      padding: const EdgeInsets.all(OSSpacing.xl),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: OSColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              imagePath,
              width: 96,
              height: 96,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: OSSpacing.lg),

          Text(title, style: OSTypography.title),

          const SizedBox(height: OSSpacing.sm),

          const Row(
            children: [
              Icon(Icons.star, color: Color(0xFFFFB800), size: 20),
              Icon(Icons.star, color: Color(0xFFFFB800), size: 20),
              Icon(Icons.star, color: Color(0xFFFFB800), size: 20),
              Icon(Icons.star, color: Color(0xFFFFB800), size: 20),
              Icon(Icons.star, color: Color(0xFFFFB800), size: 20),
            ],
          ),

          const SizedBox(height: OSSpacing.md),

          Text(
            description,
            style: OSTypography.body.copyWith(color: OSColors.secondaryText),
          ),

          const SizedBox(height: OSSpacing.lg),

          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: Image.asset(
                screenshotPath,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: OSSpacing.xl),

          available
              ? OSButton(
                text: buttonText,
                icon: Icons.apple,
                onPressed: onPressed,
              )
              : OutlinedButton.icon(
                onPressed: onPressed,
                icon: const Icon(Icons.schedule),
                label: Text(buttonText),
              ),
        ],
      ),
    );
  }
}
