import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';

class OSFooter extends StatelessWidget {
  const OSFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFE8EEF7),
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: OSSpacing.xl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              const Text(
                '© 2026 Otakar Šimek Apps',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: OSColors.navy,
                ),
              ),

              const SizedBox(height: OSSpacing.sm),

              Text(
                'Poctivý software za poctivou cenu.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: OSColors.secondaryText,
                ),
              ),

              const SizedBox(height: OSSpacing.lg),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: OSSpacing.md,
                runSpacing: OSSpacing.sm,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/privacy');
                    },
                    child: const Text(
                      'Zásady ochrany soukromí',
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/terms');
                    },
                    child: const Text(
                      'Podmínky používání',
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: const Text(
                      'Kontakt',
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