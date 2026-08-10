import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import '../../shared/widgets/os_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 700;

        return Container(
          width: double.infinity,
          color: OSColors.background,
          padding: EdgeInsets.symmetric(
            horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
            vertical: isCompact ? OSSpacing.xxl : OSSpacing.xxxl,
          ),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Column(
                children: [
                  Text(
                    'Kontakt',
                    textAlign: TextAlign.center,
                    style:
                        isCompact
                            ? OSTypography.headline.copyWith(
                              fontSize: 30,
                              height: 1.15,
                            )
                            : OSTypography.headline,
                  ),

                  const SizedBox(height: OSSpacing.md),

                  Text(
                    'Máte dotaz, nápad nebo připomínku k některé z aplikací? '
                    'Napište mi.',
                    textAlign: TextAlign.center,
                    style: OSTypography.body.copyWith(
                      color: OSColors.secondaryText,
                      fontSize: isCompact ? 15 : null,
                    ),
                  ),

                  SizedBox(height: isCompact ? OSSpacing.xl : OSSpacing.xxl),

                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(
                      isCompact ? OSSpacing.xl : OSSpacing.xxl,
                    ),
                    decoration: BoxDecoration(
                      color: OSColors.white,
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: OSColors.border),
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.mail_outline,
                          size: isCompact ? 42 : 48,
                          color: OSColors.blue,
                        ),

                        const SizedBox(height: OSSpacing.lg),

                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            'info@otakarsimek.cz',
                            textAlign: TextAlign.center,
                            style: OSTypography.title,
                          ),
                        ),

                        const SizedBox(height: OSSpacing.md),

                        Text(
                          'Otakar Šimek Apps',
                          textAlign: TextAlign.center,
                          style: OSTypography.body.copyWith(
                            color: OSColors.secondaryText,
                          ),
                        ),

                        const SizedBox(height: OSSpacing.xl),

                        SizedBox(
                          width: isCompact ? double.infinity : null,
                          child: OSButton(
                            text: 'Napsat e-mail',
                            icon: Icons.mail_outline,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
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
