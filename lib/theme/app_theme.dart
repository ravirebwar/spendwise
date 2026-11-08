import 'package:flutter/material.dart';
// All colors and text styles of SpendWise live here
class AppTheme {
  static ThemeData light() => _build(Brightness.light);
  static ThemeData dark() => _build(Brightness.dark);
  static ThemeData _build(Brightness brrightness){
    final scheme = ColorScheme.fromSeed(
      seedColor: Colors.cyan,
      brightness: brrightness,
    );
    return ThemeData(
      colorScheme: scheme,
      appBarTheme: AppBarTheme(
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        centerTitle: true,
      )
    );
  }
}