import 'package:flutter/material.dart';

import '../../shared/layout/os_header.dart';
import '../../shared/widgets/os_background.dart';
import '../../shared/widgets/os_card.dart';
import 'about_section.dart';
import 'contact_section.dart';
import 'founder_section.dart';
import 'hero_section.dart';
import 'products_section.dart';
import '../../shared/layout/os_footer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _topKey = GlobalKey();
  final GlobalKey _productsKey = GlobalKey();
  final GlobalKey _aboutKey = GlobalKey();
  final GlobalKey _contactKey = GlobalKey();

  void _scrollTo(GlobalKey key) {
    final targetContext = key.currentContext;

    if (targetContext == null) {
      return;
    }

    Scrollable.ensureVisible(
      targetContext,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      alignment: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF2F6FC),
              border: Border(
                bottom: BorderSide(color: const Color(0xFFDCE6F2), width: 1),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.04),
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: OSHeader(
              onHomePressed: () {
                _scrollTo(_topKey);
              },
              onFinanceManagerPressed: () {
                _scrollTo(_productsKey);
              },
              onPaintMasterPressed: () {
                _scrollTo(_productsKey);
              },
              onAboutPressed: () {
                _scrollTo(_aboutKey);
              },
              onContactPressed: () {
                _scrollTo(_contactKey);
              },
            ),
          ),
          Expanded(
            child: OSBackground(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      key: _topKey,
                      child: HeroSection(
                        onAppsPressed: () {
                          _scrollTo(_productsKey);
                        },
                        onAboutPressed: () {
                          _scrollTo(_aboutKey);
                        },
                      ),
                    ),

                    const SizedBox(height: 64),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Wrap(
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
                    ),
                    const SizedBox(height: 80),

                    Container(
                      key: _productsKey,
                      child: const ProductsSection(),
                    ),

                    Container(key: _aboutKey, child: const AboutSection()),

                    const FounderSection(),

                    Container(key: _contactKey, child: const ContactSection()),

                    const OSFooter(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
