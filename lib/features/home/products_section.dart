import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';
import '../../shared/widgets/os_product_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: OSSpacing.xxl,
        vertical: OSSpacing.xxxl,
      ),
      color: OSColors.white,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: Column(
            children: [
              Text(
                'Naše aplikace',
                textAlign: TextAlign.center,
                style: OSTypography.headline,
              ),
              const SizedBox(height: OSSpacing.md),
              Text(
                'Aplikace navržené s důrazem na kvalitu, soukromí a férovost.',
                textAlign: TextAlign.center,
                style: OSTypography.body.copyWith(
                  color: OSColors.secondaryText,
                ),
              ),
              const SizedBox(height: OSSpacing.xxl),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: OSSpacing.lg,
                runSpacing: OSSpacing.lg,
                children: [
                  OSProductCard(
                    imagePath: 'assets/images/apps/finance_manager.png',
                    screenshotPath:
                        'assets/images/apps/screenshots/finance_manager_1.png',
                    title: 'Finance Manager',
                    description:
                        'Osobní finance s přehledem. Sledujte příjmy, výdaje, '
                        'rozpočty a plánované platby.',
                    buttonText: ' Stáhnout z App Store',
                    available: true,
                    onPressed: null,
                  ),
                  OSProductCard(
                    imagePath: 'assets/images/apps/paintmaster.png',
                    screenshotPath:
                        'assets/images/apps/screenshots/paintmaster_1.png',
                    title: 'PaintMaster',
                    description:
                        'Komplexní systém pro autolakýrnické firmy. '
                        'Správa zákazníků a objednávek, kalkulace, fakturace, '
                        'databáze autolaků a kódů barev i správa e-shopu.',
                    buttonText: 'Zjistit více',
                    available: true,
                    onPressed: null,
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
