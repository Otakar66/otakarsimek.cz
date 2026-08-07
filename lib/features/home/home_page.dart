import 'package:flutter/material.dart';

import 'hero_section.dart';
import '../../shared/widgets/os_card.dart';
import 'products_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(
              onAppsPressed: () {
                debugPrint('Naše aplikace');
              },
              onAboutPressed: () {
                debugPrint('O značce');
              },
            ),

            const SizedBox(height: 64),

            Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 24,
              children: const [
                OSCard(
                  icon: Icons.workspace_premium_outlined,
                  title: 'Kvalita',
                  description:
                      'Stabilní a promyšlené aplikace, které vytváříme s důrazem na dlouhodobou podporu.',
                ),
                OSCard(
                  icon: Icons.lock_outline,
                  title: 'Soukromí',
                  description:
                      'Vaše data zůstávají ve vašem zařízení. Nesbíráme ani neprodáváme osobní údaje.',
                ),
                OSCard(
                  icon: Icons.handshake_outlined,
                  title: 'Férovost',
                  description:
                      'Žádné skryté poplatky. Žádná zbytečná předplatná. Poctivý software za poctivou cenu.',
                ),
              ],
            ),
            const SizedBox(height: 80),
            const ProductsSection(),
          ],
        ),
      ),
    );
  }
}
