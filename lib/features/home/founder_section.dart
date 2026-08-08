import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class FounderSection extends StatelessWidget {
  const FounderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: OSColors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: OSSpacing.xxxl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              Text(
                'Za značkou Otakar Šimek Apps',
                textAlign: TextAlign.center,
                style: OSTypography.headline,
              ),

              const SizedBox(height: OSSpacing.md),

              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 760),
                child: Text(
                  'Software vzniká z reálných potřeb a zkušeností. '
                  'Každou aplikaci vytvářím s důrazem na kvalitu, '
                  'dlouhodobou použitelnost a férový přístup k uživatelům.',
                  textAlign: TextAlign.center,
                  style: OSTypography.body.copyWith(
                    color: OSColors.secondaryText,
                  ),
                ),
              ),

              const SizedBox(height: OSSpacing.xxl),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(OSSpacing.xxl),
                decoration: BoxDecoration(
                  color: OSColors.background,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: OSColors.border),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: OSColors.blue,
                      ),
                      child: const Icon(
                        Icons.person_outline,
                        size: 64,
                        color: Colors.white,
                      ),
                    ),

                    const SizedBox(height: OSSpacing.lg),

                    Text(
                      'Otakar Šimek',
                      textAlign: TextAlign.center,
                      style: OSTypography.title,
                    ),

                    const SizedBox(height: OSSpacing.sm),

                    Text(
                      'Zakladatel a autor aplikací',
                      textAlign: TextAlign.center,
                      style: OSTypography.body.copyWith(
                        color: OSColors.secondaryText,
                      ),
                    ),

                    const SizedBox(height: OSSpacing.lg),

                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 760),
                      child: Text(
                        'Věřím, že dobrý software má řešit konkrétní problémy, '
                        'šetřit čas a být spolehlivým nástrojem pro každodenní práci. '
                        'Finance Manager i PaintMaster vznikly právě z této filozofie '
                        'a oba produkty budou dál průběžně rozvíjeny podle potřeb uživatelů.',
                        textAlign: TextAlign.center,
                        style: OSTypography.body,
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
  }
}
