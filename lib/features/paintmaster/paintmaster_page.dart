import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class PaintMasterPage extends StatelessWidget {
  const PaintMasterPage({super.key});

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
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                                'assets/images/apps/paintmaster.png',
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
                              'PaintMaster',
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
                              'Řízení autolakovny na jednom místě.',
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
                              constraints: const BoxConstraints(maxWidth: 760),
                              child: Text(
                                'Komplexní informační systém pro každodenní '
                                'provoz autolakýrnických firem. Zakázky, '
                                'zákazníci, fakturace, náklady, databáze barev '
                                'a další nástroje v jedné aplikaci.',
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
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                              constraints: const BoxConstraints(maxWidth: 760),
                              child: Text(
                                'Nástroje pro zakázky, zákazníky, finance '
                                'i každodenní provoz firmy.',
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
                                  title: 'Dashboard',
                                  description:
                                      'Rychlý přehled zisku, příjmů, nákladů '
                                      'a zakázek.',
                                ),
                                _FeatureCard(
                                  icon: Icons.work_outline,
                                  title: 'Zakázky',
                                  description:
                                      'Správa zakázek, objednávek a navazující '
                                      'fakturace.',
                                ),
                                _FeatureCard(
                                  icon: Icons.people_outline,
                                  title: 'Zákazníci',
                                  description:
                                      'Evidence zákazníků a důležitých '
                                      'kontaktních údajů.',
                                ),
                                _FeatureCard(
                                  icon: Icons.receipt_long_outlined,
                                  title: 'Faktury',
                                  description:
                                      'Přehled faktur a vazba na konkrétní '
                                      'zakázky a zákazníky.',
                                ),
                                _FeatureCard(
                                  icon: Icons.payments_outlined,
                                  title: 'Náklady',
                                  description:
                                      'Evidence provozních nákladů a lepší '
                                      'kontrola hospodaření.',
                                ),
                                _FeatureCard(
                                  icon: Icons.palette_outlined,
                                  title: 'Databáze barev',
                                  description:
                                      'Vyhledávání odstínů podle značky, '
                                      'modelu, roku, Paint Code nebo názvu.',
                                ),
                                _FeatureCard(
                                  icon: Icons.color_lens_outlined,
                                  title: 'Moje odstíny',
                                  description:
                                      'Vlastní katalog používaných a '
                                      'oblíbených odstínů.',
                                ),
                                _FeatureCard(
                                  icon: Icons.directions_car_outlined,
                                  title: 'Vozidla',
                                  description:
                                      'Evidence vozidel propojená s dalšími '
                                      'částmi systému.',
                                ),
                                _FeatureCard(
                                  icon: Icons.shopping_cart_outlined,
                                  title: 'E-shop',
                                  description:
                                      'Přístup k e-shopové části přímo '
                                      'z aplikace.',
                                ),
                                _FeatureCard(
                                  icon: Icons.download_outlined,
                                  title: 'Export pro účetní',
                                  description:
                                      'Export faktur a nákladů do CSV pro '
                                      'další zpracování.',
                                ),
                                _FeatureCard(
                                  icon: Icons.backup_outlined,
                                  title: 'Záloha dat',
                                  description:
                                      'Možnost zálohovat důležitá firemní data.',
                                ),
                                _FeatureCard(
                                  icon: Icons.calendar_month_outlined,
                                  title: 'Kalendář',
                                  description:
                                      'Přehled termínů a událostí souvisejících '
                                      's provozem firmy.',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Databáze barev
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                                Icons.palette_outlined,
                                size: isCompact ? 44 : 52,
                                color: OSColors.blue,
                              ),
                              const SizedBox(height: OSSpacing.lg),
                              Text(
                                'Databáze automobilových barev',
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
                                constraints: const BoxConstraints(maxWidth: 720),
                                child: Text(
                                  'Vyhledávejte odstíny podle značky, modelu, '
                                  'roku výroby, Paint Code nebo názvu. '
                                  'Pracujte s oblíbenými odstíny, vzorky '
                                  'a vlastním katalogem barev.',
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

                  // Ukázka aplikace
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                              'Ukázky z každodenního používání PaintMasteru.',
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
                                      'assets/images/apps/screenshots/paintmaster_1.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/paintmaster_2.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/paintmaster_3.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/paintmaster_4.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/paintmaster_5.png',
                                ),
                                _ScreenshotCard(
                                  imagePath:
                                      'assets/images/apps/screenshots/paintmaster_6.png',
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Od zakázky po účetnictví
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
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
                                Icons.account_tree_outlined,
                                size: isCompact ? 44 : 52,
                                color: OSColors.blue,
                              ),
                              const SizedBox(height: OSSpacing.lg),
                              Text(
                                'Od zakázky až po účetnictví',
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
                                constraints: const BoxConstraints(maxWidth: 720),
                                child: Text(
                                  'PaintMaster propojuje zákazníky, zakázky, '
                                  'faktury a náklady s ekonomickým přehledem. '
                                  'Účetní data lze následně exportovat do CSV '
                                  'pro další zpracování.',
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
                      horizontal: isCompact ? OSSpacing.lg : OSSpacing.xxl,
                      vertical: isCompact ? 48 : 72,
                    ),
                    child: Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 800),
                        child: Column(
                          children: [
                            Text(
                              'PaintMaster',
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
                              'Praktický systém pro řízení každodenního '
                              'provozu autolakovny.',
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