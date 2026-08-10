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
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isCompact = screenWidth < 700;

    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) {
        if (!isCompact) {
          setState(() {
            isHovered = true;
          });
        }
      },
      onExit: (_) {
        if (!isCompact) {
          setState(() {
            isHovered = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(
          0,
          !isCompact && isHovered ? -6 : 0,
          0,
        ),
        width: isCompact ? double.infinity : 420,
        constraints: BoxConstraints(maxWidth: isCompact ? 460 : 420),
        padding: EdgeInsets.all(isCompact ? OSSpacing.lg : OSSpacing.xl),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: !isCompact && isHovered ? OSColors.blue : OSColors.border,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: !isCompact && isHovered ? 0.12 : 0.05,
              ),
              blurRadius: !isCompact && isHovered ? 32 : 20,
              offset: Offset(0, !isCompact && isHovered ? 14 : 8),
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
                width: isCompact ? 84 : 96,
                height: isCompact ? 84 : 96,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: isCompact ? OSSpacing.md : OSSpacing.lg),

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

            Text(
              widget.description,
              style: OSTypography.body.copyWith(color: OSColors.secondaryText),
            ),

            SizedBox(height: isCompact ? OSSpacing.md : OSSpacing.lg),

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

            SizedBox(height: isCompact ? OSSpacing.lg : OSSpacing.xl),

            SizedBox(
              width: isCompact ? double.infinity : null,
              child:
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
            ),
          ],
        ),
      ),
    );
  }
}
