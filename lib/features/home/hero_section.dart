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
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 700;

        return Container(
          width: double.infinity,
          color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
            vertical: isCompact ? 56 : 96,
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
                    style:
                        isCompact
                            ? OSTypography.hero.copyWith(
                              fontSize: 40,
                              height: 1.1,
                            )
                            : OSTypography.hero,
                  ),

                  SizedBox(height: isCompact ? OSSpacing.md : OSSpacing.lg),

                  Text(
                    'Poctivý software za poctivou cenu.',
                    textAlign: TextAlign.center,
                    style: OSTypography.title.copyWith(
                      color: OSColors.blue,
                      fontSize: isCompact ? 20 : null,
                    ),
                  ),

                  SizedBox(height: isCompact ? OSSpacing.md : OSSpacing.lg),

                  ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 760),
                    child: Text(
                      'Vyvíjím moderní aplikace, které spojují kvalitu, '
                      'respekt k soukromí a férový přístup k uživatelům.',
                      textAlign: TextAlign.center,
                      style: OSTypography.body.copyWith(
                        color: OSColors.secondaryText,
                        fontSize: isCompact ? 15 : null,
                      ),
                    ),
                  ),

                  SizedBox(height: isCompact ? OSSpacing.lg : OSSpacing.xl),

                  if (isCompact)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        OSButton(
                          text: 'Naše aplikace',
                          icon: Icons.apps_outlined,
                          onPressed: onAppsPressed,
                        ),

                        const SizedBox(height: OSSpacing.md),

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
                    )
                  else
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
      },
    );
  }
}
