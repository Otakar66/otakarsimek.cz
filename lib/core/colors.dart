import 'package:flutter/material.dart';

/// Otakar Šimek Apps – Brand Colors
abstract final class OSColors {
  OSColors._();

  /// Primární tmavě modrá
  static const Color navy = Color(0xFF0A1E46);

  /// Akcentní modrá
  static const Color blue = Color(0xFF1565F5);

  /// Bílé pozadí
  static const Color white = Color(0xFFFFFFFF);

  /// Světlé pozadí
  static const Color background = Color(0xFFF8FAFC);

  /// Tmavé pozadí
  static const Color darkBackground = Color(0xFF111827);

  /// Text
  static const Color text = navy;

  /// Sekundární text
  static const Color secondaryText = Color(0xFF64748B);

  /// Oddělovací čára
  static const Color border = Color(0xFFE2E8F0);
}
