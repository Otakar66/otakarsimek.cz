import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: OSColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 900),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: OSSpacing.xl,
                  vertical: OSSpacing.xxl,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text('Zpět'),
                      style: TextButton.styleFrom(
                        foregroundColor: OSColors.navy,
                      ),
                    ),

                    const SizedBox(height: OSSpacing.xl),

                    Text(
                      'Podmínky používání',
                      style: OSTypography.hero.copyWith(
                        fontSize: 44,
                        height: 1.1,
                      ),
                    ),

                    const SizedBox(height: OSSpacing.md),

                    Text(
                      'Poslední aktualizace: 12. srpna 2026',
                      style: OSTypography.body.copyWith(
                        color: OSColors.secondaryText,
                      ),
                    ),

                    const SizedBox(height: OSSpacing.xxl),

                    const _TermsSection(
                      title: '1. Úvod',
                      text:
                          'Tyto podmínky upravují používání webu otakarsimek.cz '
                          'a aplikací Finance Manager a PaintMaster.',
                    ),

                    const _TermsSection(
                      title: '2. Používání webu',
                      text:
                          'Web slouží především k prezentaci aplikací, informací '
                          'o jejich funkcích a možnostech kontaktu.',
                    ),

                    const _TermsSection(
                      title: '3. Používání aplikací',
                      text:
                          'Aplikace jsou určeny k běžnému používání v souladu '
                          's jejich zamýšleným účelem. Uživatel odpovídá za správnost '
                          'údajů, které do aplikací zadává.',
                    ),

                    const _TermsSection(
                      title: '4. Finance Manager',
                      text:
                          'Finance Manager slouží pro správu osobních financí. '
                          'Výstupy aplikace mají informativní charakter a nepředstavují '
                          'finanční, investiční ani daňové poradenství.',
                    ),

                    const _TermsSection(
                      title: '5. PaintMaster',
                      text:
                          'PaintMaster je informační systém určený zejména pro '
                          'autolakýrnické firmy. Uživatel odpovídá za správnost '
                          'firemních, zákaznických a účetních údajů vložených do systému.',
                    ),

                    const _TermsSection(
                      title: '6. Zálohování dat',
                      text:
                          'Pokud aplikace umožňuje export nebo zálohu dat, doporučuje '
                          'se zálohy pravidelně vytvářet a bezpečně ukládat.',
                    ),

                    const _TermsSection(
                      title: '7. Dostupnost služby',
                      text:
                          'Cílem je poskytovat web a aplikace v co nejvyšší možné '
                          'kvalitě. Nelze však zaručit nepřetržitou dostupnost bez '
                          'výpadků, chyb nebo omezení.',
                    ),

                    const _TermsSection(
                      title: '8. Aktualizace',
                      text:
                          'Aplikace a web mohou být průběžně aktualizovány, měněny '
                          'nebo rozšiřovány o nové funkce.',
                    ),

                    const _TermsSection(
                      title: '9. Duševní vlastnictví',
                      text:
                          'Obsah webu, značka Otakar Šimek Apps, grafické prvky, '
                          'zdrojové kódy a další části aplikací jsou chráněny '
                          'příslušnými právními předpisy.',
                    ),

                    const _TermsSection(
                      title: '10. Omezení odpovědnosti',
                      text:
                          'Otakar Šimek Apps neodpovídá za škody vzniklé nesprávným '
                          'použitím aplikace, ztrátou dat způsobenou okolnostmi mimo '
                          'kontrolu vývojáře nebo použitím aplikace v rozporu s jejím účelem.',
                    ),

                    const _TermsSection(
                      title: '11. Služby třetích stran',
                      text:
                          'Pokud aplikace využívají služby třetích stran, mohou se na '
                          'jejich používání vztahovat také podmínky příslušných poskytovatelů.',
                    ),

                    const _TermsSection(
                      title: '12. Kontakt',
                      text:
                          'V případě dotazů k těmto podmínkám můžete napsat na '
                          'info@otakarsimek.cz.',
                    ),

                    const _TermsSection(
                      title: '13. Změny podmínek',
                      text:
                          'Tyto podmínky mohou být průběžně aktualizovány. Aktuální '
                          'verze bude vždy zveřejněna na webu otakarsimek.cz.',
                    ),

                    const SizedBox(height: OSSpacing.xxl),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TermsSection extends StatelessWidget {
  final String title;
  final String text;

  const _TermsSection({
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: OSSpacing.xl),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: OSTypography.title,
          ),
          const SizedBox(height: OSSpacing.sm),
          Text(
            text,
            style: OSTypography.body.copyWith(
              color: OSColors.secondaryText,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}