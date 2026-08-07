import 'package:flutter/material.dart';

import 'colors.dart';

abstract final class OSTypography {
  OSTypography._();

  static const TextStyle hero = TextStyle(
    fontSize: 52,
    fontWeight: FontWeight.bold,
    color: OSColors.text,
    height: 1.1,
  );

  static const TextStyle headline = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    color: OSColors.text,
  );

  static const TextStyle title = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: OSColors.text,
  );

  static const TextStyle body = TextStyle(
    fontSize: 18,
    color: OSColors.text,
    height: 1.6,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14,
    color: OSColors.secondaryText,
  );
}
