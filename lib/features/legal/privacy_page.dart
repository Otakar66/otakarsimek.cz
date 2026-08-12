import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../../core/spacing.dart';
import '../../core/typography.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

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
                      'Zásady ochrany soukromí',
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

                    const _PrivacySection(
                      title: '1. Úvod',
                      text:
                          'Ochrana soukromí uživatelů je pro Otakar Šimek Apps '
                          'důležitá. Tyto zásady popisují, jaké údaje mohou být '
                          'zpracovávány při používání webu otakarsimek.cz a '
                          'aplikací Finance Manager a PaintMaster.',
                    ),

                    const _PrivacySection(
                      title: '2. Web otakarsimek.cz',
                      text:
                          'Web slouží především jako informační a prezentační '
                          'stránka aplikací Otakar Šimek Apps. Web v současné '
                          'podobě nevyžaduje registraci uživatele a neobsahuje '
                          'vlastní uživatelské účty.',
                    ),

                    const _PrivacySection(
                      title: '3. Kontaktní e-mail',
                      text:
                          'Pokud mě kontaktujete prostřednictvím adresy '
                          'info@otakarsimek.cz, zpracovávám údaje, které mi '
                          'dobrovolně zašlete, například vaši e-mailovou adresu, '
                          'jméno a obsah zprávy. Tyto údaje používám pouze pro '
                          'vyřízení dotazu, podpory nebo související komunikace.',
                    ),

                    const _PrivacySection(
                      title: '4. Finance Manager',
                      text:
                          'Finance Manager je aplikace pro správu osobních '
                          'financí. Údaje zadané do aplikace, například příjmy, '
                          'výdaje, rozpočty, kategorie a plánované platby, jsou '
                          'určeny pro fungování aplikace a správu osobních '
                          'financí uživatele.',
                    ),

                    const _PrivacySection(
                      title: '5. Lokální data a zálohy',
                      text:
                          'Finance Manager umožňuje pracovat s databází aplikace '
                          'a vytvářet její zálohu. Uživatel má možnost databázi '
                          'exportovat a později ji znovu obnovit. Za bezpečné '
                          'uložení exportované zálohy odpovídá uživatel.',
                    ),

                    const _PrivacySection(
                      title: '6. Zabezpečení Finance Manageru',
                      text:
                          'Finance Manager umožňuje chránit přístup do aplikace '
                          'heslem. Tato funkce slouží ke zvýšení ochrany '
                          'finančních údajů před neoprávněným přístupem.',
                    ),

                    const _PrivacySection(
                      title: '7. PaintMaster',
                      text:
                          'PaintMaster je informační systém určený zejména pro '
                          'autolakýrnické firmy. Může obsahovat údaje týkající se '
                          'zákazníků, vozidel, zakázek, faktur, nákladů, barev '
                          'a dalších informací, které uživatel do systému zadá '
                          'v rámci své podnikatelské činnosti.',
                    ),

                    const _PrivacySection(
                      title: '8. Odpovědnost uživatele PaintMasteru',
                      text:
                          'Uživatel PaintMasteru odpovídá za to, že osobní údaje '
                          'svých zákazníků a dalších osob zpracovává v souladu '
                          's platnými právními předpisy. Otakar Šimek Apps '
                          'neurčuje, jaké konkrétní údaje uživatel do aplikace '
                          'zadává.',
                    ),

                    const _PrivacySection(
                      title: '9. Export dat',
                      text:
                          'Některé funkce aplikací umožňují export dat, například '
                          'zálohu databáze nebo export účetních údajů. Po exportu '
                          'má uživatel kontrolu nad tím, kde a jak budou '
                          'exportované soubory dále uloženy nebo předány.',
                    ),

                    const _PrivacySection(
                      title: '10. Služby třetích stran',
                      text:
                          'Pokud budou v budoucnu použity služby třetích stran, '
                          'například analytické, cloudové, platební nebo jiné '
                          'externí služby, budou tyto zásady odpovídajícím '
                          'způsobem aktualizovány.',
                    ),

                    const _PrivacySection(
                      title: '11. Analytika',
                      text:
                          'Web ani aplikace v současné produkční konfiguraci '
                          'nepoužívají vlastní uživatelské účty ani reklamní '
                          'profilování. Pokud bude v budoucnu přidána analytika, '
                          'budou tyto zásady aktualizovány.',
                    ),

                    const _PrivacySection(
                      title: '12. Doba uchování údajů',
                      text:
                          'Údaje zaslané prostřednictvím e-mailové komunikace '
                          'jsou uchovávány pouze po dobu nezbytnou pro vyřízení '
                          'komunikace, podpory a případných navazujících '
                          'záležitostí.',
                    ),

                    const _PrivacySection(
                      title: '13. Práva uživatele',
                      text:
                          'V rozsahu stanoveném platnými právními předpisy můžete '
                          'požádat o informace týkající se vašich osobních údajů, '
                          'jejich opravu nebo výmaz, případně uplatnit další '
                          'práva související s ochranou osobních údajů.',
                    ),

                    const _PrivacySection(
                      title: '14. Kontakt',
                      text:
                          'V případě dotazů týkajících se ochrany soukromí nebo '
                          'zpracování osobních údajů mě můžete kontaktovat na '
                          'e-mailové adrese info@otakarsimek.cz.',
                    ),

                    const _PrivacySection(
                      title: '15. Změny těchto zásad',
                      text:
                          'Tyto zásady mohou být průběžně aktualizovány zejména '
                          'v souvislosti s rozvojem webu, aplikací nebo zavedením '
                          'nových funkcí. Aktuální verze bude vždy zveřejněna '
                          'na webu otakarsimek.cz.',
                    ),

                    const SizedBox(height: OSSpacing.xxl),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(OSSpacing.xl),
                      decoration: BoxDecoration(
                        color: OSColors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: OSColors.border),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Kontakt',
                            style: OSTypography.title,
                          ),
                          const SizedBox(height: OSSpacing.sm),
                          Text(
                            'Otakar Šimek Apps',
                            style: OSTypography.body,
                          ),
                          const SizedBox(height: OSSpacing.xs),
                          Text(
                            'info@otakarsimek.cz',
                            style: OSTypography.body.copyWith(
                              color: OSColors.blue,
                            ),
                          ),
                        ],
                      ),
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

class _PrivacySection extends StatelessWidget {
  final String title;
  final String text;

  const _PrivacySection({
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