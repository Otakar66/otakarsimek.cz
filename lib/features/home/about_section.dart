import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import '../../shared/widgets/os_card.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              Text(
                'Software, který řeší skutečné problémy.',
                textAlign: TextAlign.center,
                style: OSTypography.headline,
              ),

              const SizedBox(height: OSSpacing.md),

              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 820),
                child: Text(
                  'Vytvářím aplikace, které pomáhají lidem i firmám '
                  'pracovat rychleji, přehledněji a s větší jistotou. '
                  'Každý produkt vzniká z reálných zkušeností a je navržen '
                  'pro dlouhodobé používání.',
                  textAlign: TextAlign.center,
                  style: OSTypography.body.copyWith(
                    color: OSColors.secondaryText,
                  ),
                ),
              ),

              const SizedBox(height: OSSpacing.xxl),

              Wrap(
                alignment: WrapAlignment.center,
                spacing: OSSpacing.lg,
                runSpacing: OSSpacing.lg,
                children: const [
                  OSCard(
                    icon: Icons.auto_awesome_outlined,
                    title: 'Jednoduchost',
                    description:
                        'Přehledné rozhraní bez zbytečné složitosti. '
                        'Software má šetřit čas, ne ho komplikovat.',
                  ),
                  OSCard(
                    icon: Icons.lock_outline,
                    title: 'Soukromí',
                    description:
                        'Vaše data zůstávají pod vaší kontrolou. '
                        'Soukromí není doplněk, ale základní princip.',
                  ),
                  OSCard(
                    icon: Icons.verified_outlined,
                    title: 'Kvalita',
                    description:
                        'Každá aplikace je navržena s důrazem na stabilitu, '
                        'spolehlivost a dlouhodobou podporu.',
                  ),
                  OSCard(
                    icon: Icons.people_outline,
                    title: 'Vývoj s uživateli',
                    description:
                        'Nové funkce vznikají podle skutečných potřeb lidí, '
                        'kteří software používají každý den.',
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
