import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import 'os_button.dart';

class OSProductCard extends StatefulWidget {
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
  State<OSProductCard> createState() => _OSProductCardState();
}

class _OSProductCardState extends State<OSProductCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, isHovered ? -6 : 0, 0),
        width: 420,
        height: 710,
        padding: const EdgeInsets.all(OSSpacing.xl),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isHovered ? OSColors.blue : OSColors.border,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: isHovered ? 0.12 : 0.05),
              blurRadius: isHovered ? 32 : 20,
              offset: Offset(0, isHovered ? 14 : 8),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                widget.imagePath,
                width: 96,
                height: 96,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: OSSpacing.lg),

            Text(widget.title, style: OSTypography.title),

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

            SizedBox(
              height: 110,
              child: Text(
                widget.description,
                style: OSTypography.body.copyWith(
                  color: OSColors.secondaryText,
                ),
              ),
            ),

            const SizedBox(height: OSSpacing.lg),

            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: AspectRatio(
                aspectRatio: 16 / 10,
                child: Image.asset(
                  widget.screenshotPath,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: OSSpacing.xl),

            widget.available
                ? OSButton(
                  text: widget.buttonText,
                  icon: Icons.apple,
                  onPressed: widget.onPressed,
                )
                : OutlinedButton.icon(
                  onPressed: widget.onPressed,
                  icon: const Icon(Icons.schedule),
                  label: Text(widget.buttonText),
                ),
          ],
        ),
      ),
    );
  }
}
