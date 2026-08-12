import 'package:flutter/material.dart';

import '../features/finance-manager/finance_manager_page.dart';
import '../features/home/home_page.dart';
import 'theme.dart';
import '../features/paintmaster/paintmaster_page.dart';
import '../features/legal/privacy_page.dart';
import '../features/legal/terms_page.dart';

class OtakarSimekApp extends StatelessWidget {
  const OtakarSimekApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otakar Šimek Apps',
      theme: OSTheme.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/finance-manager': (context) => const FinanceManagerPage(),
        '/paintmaster': (context) => const PaintMasterPage(),
        '/privacy': (context) => const PrivacyPage(),
        '/terms': (context) => const TermsPage(),
      },
    );
  }
}