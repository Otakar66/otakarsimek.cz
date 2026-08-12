import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class FinanceManagerPage extends StatelessWidget {
  const FinanceManagerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OSColors.background,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isCompact = constraints.maxWidth < 700;

            return SingleChildScrollView(
              child: Column(
                children: [
                  // Horní navigace
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical: OSSpacing.lg,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        child: Row(
                          children: [
                            TextButton.icon(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back),
                              label: const Text('Zpět na hlavní stránku'),
                              style: TextButton.styleFrom(
                                foregroundColor: OSColors.navy,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Hero
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical: isCompact ? 48 : 80,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(24),
                              child: Image.asset(
                                'assets/images/apps/finance_manager.png',
                                width: isCompact ? 96 : 120,
                                height: isCompact ? 96 : 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height:
                                  isCompact
                                      ? OSSpacing.lg
                                      : OSSpacing.xl,
                            ),
                            Text(
                              'Finance Manager',
                              textAlign: TextAlign.center,
                              style:
                                  isCompact
                                      ? OSTypography.hero.copyWith(
                                        fontSize: 40,
                                        height: 1.1,
                                      )
                                      : OSTypography.hero,
                            ),
                            const SizedBox(height: OSSpacing.md),
                            Text(
                              'Vaše finance. Přehledně a pod kontrolou.',
                              textAlign: TextAlign.center,
                              style: OSTypography.title.copyWith(
                                color: OSColors.blue,
                                fontSize: isCompact ? 20 : null,
                              ),
                            ),
                            SizedBox(
                              height:
                                  isCompact
                                      ? OSSpacing.md
                                      : OSSpacing.lg,
                            ),
                            ConstrainedBox(
                              constraints:
                                  const BoxConstraints(maxWidth: 720),
                              child: Text(
                                'Přehledná aplikace pro správu osobních financí. '
                                'Sledujte příjmy, výdaje, rozpočty, statistiky '
                                'a budoucí platby na jednom místě.',
                                textAlign: TextAlign.center,
                                style: OSTypography.body.copyWith(
                                  color: OSColors.secondaryText,
                                  fontSize: isCompact ? 15 : null,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  isCompact
                                      ? OSSpacing.xl
                                      : OSSpacing.xxl,
                            ),
                            OutlinedButton.icon(
                              onPressed: null,
                              icon: const Icon(Icons.apple),
                              label: const Text(
                                'Již brzy v App Store',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Hlavní funkce
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical:
                          isCompact ? OSSpacing.xxl : OSSpacing.xxxl,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        child: Column(
                          children: [
                            Text(
                              'Hlavní funkce',
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
                            ConstrainedBox(
                              constraints:
                                  const BoxConstraints(maxWidth: 760),
                              child: Text(
                                'Vše důležité pro správu osobních financí '
                                'na jednom místě.',
                                textAlign: TextAlign.center,
                                style: OSTypography.body.copyWith(
                                  color: OSColors.secondaryText,
                                  fontSize: isCompact ? 15 : null,
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  isCompact
                                      ? OSSpacing.xl
                                      : OSSpacing.xxl,
                            ),
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: OSSpacing.lg,
                              runSpacing: OSSpacing.lg,
                              children: const [
                                _FeatureCard(
                                  icon: Icons.dashboard_outlined,
                                  title: 'Přehled',
                                  description:
                                      'Rychlý přehled o aktuálním stavu '
                                      'vašich financí.',
                                ),
                                _FeatureCard(
                                  icon: Icons.receipt_long_outlined,
                                  title: 'Transakce',
                                  description:
                                      'Evidence příjmů a výdajů přehledně '
                                      'na jednom místě.',
                                ),
                                _FeatureCard(
                                  icon: Icons.bar_chart_outlined,
                                  title: 'Statistiky',
                                  description:
                                      'Přehledné vyhodnocení hospodaření '
                                      'a vývoje financí.',
                                ),
                                _FeatureCard(
                                  icon: Icons.savings_outlined,
                                  title: 'Rozpočty',
                                  description:
                                      'Plánujte výdaje a sledujte, jak se '
                                      'držíte svého rozpočtu.',
                                ),
                                _FeatureCard(
                                  icon: Icons.sync_outlined,
                                  title: 'Opakované platby',
                                  description:
                                      'Pravidelné příjmy a výdaje bez '
                                      'zbytečného ručního zadávání.',
                                ),
                                _FeatureCard(
                                  icon: Icons.calendar_month_outlined,
                                  title: 'Kalendář',
                                  description:
                                      'Mějte přehled o budoucích finančních '
                                      'událostech.',
                                ),
                                _FeatureCard(
                                  icon: Icons.category_outlined,
                                  title: 'Kategorie',
                                  description:
                                      'Organizujte transakce podle vlastních '
                                      'kategorií.',
                                ),
                                _FeatureCard(
                                  icon: Icons.lock_outline,
                                  title: 'Zabezpečení',
                                  description:
                                      'Chraňte přístup k aplikaci vlastním '
                                      'heslem.',
                                ),
                                _FeatureCard(
                                  icon: Icons.storage_outlined,
                                  title: 'Záloha a obnova',
                                  description:
                                      'Exportujte kompletní databázi a '
                                      'kdykoliv ji obnovte.',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Ukázka aplikace
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical:
                          isCompact ? OSSpacing.xxl : OSSpacing.xxxl,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 1100),
                        child: Column(
                          children: [
                            Text(
                              'Ukázka aplikace',
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
                              'Podívejte se, jak Finance Manager vypadá '
                              'při každodenním používání.',
                              textAlign: TextAlign.center,
                              style: OSTypography.body.copyWith(
                                color: OSColors.secondaryText,
                                fontSize: isCompact ? 15 : null,
                              ),
                            ),
                            SizedBox(
                              height:
                                  isCompact
                                      ? OSSpacing.xl
                                      : OSSpacing.xxl,
                            ),
                            Wrap(
                              alignment: WrapAlignment.center,
                              spacing: OSSpacing.lg,
                              runSpacing: OSSpacing.lg,
                              children: const [
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/finance_manager_1.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/finance_manager_2.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/finance_manager_3.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/finance_manager_4.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Data a soukromí
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical:
                          isCompact ? OSSpacing.xxl : OSSpacing.xxxl,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 900),
                        child: Container(
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
                                Icons.shield_outlined,
                                size: isCompact ? 44 : 52,
                                color: OSColors.blue,
                              ),
                              const SizedBox(height: OSSpacing.lg),
                              Text(
                                'Vaše data patří vám',
                                textAlign: TextAlign.center,
                                style:
                                    isCompact
                                        ? OSTypography.headline.copyWith(
                                          fontSize: 28,
                                        )
                                        : OSTypography.headline,
                              ),
                              const SizedBox(height: OSSpacing.md),
                              ConstrainedBox(
                                constraints:
                                    const BoxConstraints(maxWidth: 720),
                                child: Text(
                                  'Finance Manager dává uživateli kontrolu nad '
                                  'vlastními daty. Přístup k aplikaci lze chránit '
                                  'heslem a kompletní databázi lze kdykoliv '
                                  'exportovat nebo obnovit ze zálohy.',
                                  textAlign: TextAlign.center,
                                  style: OSTypography.body.copyWith(
                                    color: OSColors.secondaryText,
                                    fontSize: isCompact ? 15 : null,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Závěrečné CTA
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical: isCompact ? 48 : 72,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: Column(
                          children: [
                            Text(
                              'Finance Manager',
                              textAlign: TextAlign.center,
                              style:
                                  isCompact
                                      ? OSTypography.headline.copyWith(
                                        fontSize: 30,
                                      )
                                      : OSTypography.headline,
                            ),
                            const SizedBox(height: OSSpacing.md),
                            Text(
                              'Přehledné osobní finance bez zbytečné složitosti.',
                              textAlign: TextAlign.center,
                              style: OSTypography.body.copyWith(
                                color: OSColors.secondaryText,
                              ),
                            ),
                            const SizedBox(height: OSSpacing.xl),
                            OutlinedButton.icon(
                              onPressed: null,
                              icon: const Icon(Icons.apple),
                              label: const Text(
                                'Již brzy v App Store',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _FeatureCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final isCompact = MediaQuery.sizeOf(context).width < 700;

    return Container(
      width: isCompact ? double.infinity : 320,
      padding: const EdgeInsets.all(OSSpacing.xl),
      decoration: BoxDecoration(
        color: OSColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: OSColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 34,
            color: OSColors.blue,
          ),
          const SizedBox(height: OSSpacing.md),
          Text(
            title,
            style: OSTypography.title,
          ),
          const SizedBox(height: OSSpacing.sm),
          Text(
            description,
            style: OSTypography.body.copyWith(
              color: OSColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}

class _ScreenshotCard extends StatelessWidget {
  final String imagePath;

  const _ScreenshotCard({
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final isCompact = MediaQuery.sizeOf(context).width < 700;

    return Container(
      width: isCompact ? double.infinity : 500,
      decoration: BoxDecoration(
        color: OSColors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: OSColors.border),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}