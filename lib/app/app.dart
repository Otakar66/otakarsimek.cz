import 'package:flutter/material.dart';

import '../features/home/home_page.dart';
import 'theme.dart';

class OtakarSimekApp extends StatelessWidget {
  const OtakarSimekApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otakar Šimek Apps',
      theme: OSTheme.light,
      home: const HomePage(),
    );
  }
}
