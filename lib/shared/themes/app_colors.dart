import 'package:flutter/material.dart';

class AppColors {
  static final primary = Color(0xFFFF941A);
  static final secondary = Color(0xFF585666);
  static final delete = Color(0xFFE83F5B);
  static final heading = Color(0xFF585666);
  static final body = Color(0xFF706E7A);
  static final stroke = Color(0xFFE3E3E6);
  static final shape = Color(0xFFFAFAFC);
  static final background = Color(0xFFFFFFFF);
  static final input = Color(0xFFB1B0B8);
  static final radialGradient = RadialGradient(
    center: Alignment(0, 0),
    radius: 0.8,
    colors: <Color>[
      Color(0xFFFFC380),
      Color(0xFFFF941A),
    ],
  );
  static final radialGradientHome = RadialGradient(
    center: Alignment(0, 1),
    radius: 1.1,
    colors: <Color>[
      Color(0xFFFFC380),
      Color(0xFFFF941A),
    ],
  );
}
