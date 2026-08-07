import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import '../../shared/widgets/os_button.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onAppsPressed;
  final VoidCallback onAboutPressed;

  const HeroSection({
    super.key,
    required this.onAppsPressed,
    required this.onAboutPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: OSColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: 96,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Otakar Šimek Apps',
                textAlign: TextAlign.center,
                style: OSTypography.hero,
              ),
              const SizedBox(height: OSSpacing.lg),
              Text(
                'Poctivý software za poctivou cenu.',
                textAlign: TextAlign.center,
                style: OSTypography.title.copyWith(color: OSColors.blue),
              ),
              const SizedBox(height: OSSpacing.lg),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Text(
                  'Vyvíjím moderní aplikace, které spojují kvalitu, '
                  'respekt k soukromí a férový přístup k uživatelům.',
                  textAlign: TextAlign.center,
                  style: OSTypography.body.copyWith(
                    color: OSColors.secondaryText,
                  ),
                ),
              ),
              const SizedBox(height: OSSpacing.xl),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: OSSpacing.md,
                runSpacing: OSSpacing.md,
                children: [
                  OSButton(
                    text: 'Naše aplikace',
                    icon: Icons.apps_outlined,
                    onPressed: onAppsPressed,
                  ),
                  OutlinedButton.icon(
                    onPressed: onAboutPressed,
                    icon: const Icon(Icons.person_outline),
                    label: const Text('O značce'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: OSColors.navy,
                      padding: const EdgeInsets.symmetric(
                        horizontal: OSSpacing.xl,
                        vertical: OSSpacing.md,
                      ),
                      side: const BorderSide(color: OSColors.border),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      textStyle: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
