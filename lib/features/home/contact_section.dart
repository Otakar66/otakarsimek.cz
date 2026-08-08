import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import '../../shared/widgets/os_button.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: OSColors.background,
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: OSSpacing.xxxl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              Text(
                'Kontakt',
                textAlign: TextAlign.center,
                style: OSTypography.headline,
              ),

              const SizedBox(height: OSSpacing.md),

              Text(
                'Máte dotaz, nápad nebo připomínku k některé z aplikací? '
                'Napište mi.',
                textAlign: TextAlign.center,
                style: OSTypography.body.copyWith(
                  color: OSColors.secondaryText,
                ),
              ),

              const SizedBox(height: OSSpacing.xxl),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(OSSpacing.xxl),
                decoration: BoxDecoration(
                  color: OSColors.white,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: OSColors.border),
                ),
                child: Column(
                  children: [
                    const Icon(
                      Icons.mail_outline,
                      size: 48,
                      color: OSColors.blue,
                    ),

                    const SizedBox(height: OSSpacing.lg),

                    Text(
                      'info@otakarsimek.cz',
                      textAlign: TextAlign.center,
                      style: OSTypography.title,
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

                    OSButton(
                      text: 'Napsat e-mail',
                      icon: Icons.mail_outline,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
