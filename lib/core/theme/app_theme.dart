import 'package:flutter/material.dart';

/// 다크 판타지 게임 톤. 웹의 디자인 언어(어두운 배경 + 앰버/자수정 강조)를 반영한다.
class AppColors {
  AppColors._();

  static const Color background = Color(0xFF0E0B14);
  static const Color surface = Color(0xFF1A1522);
  static const Color surfaceAlt = Color(0xFF241C30);
  static const Color border = Color(0xFF3A2E4D);

  static const Color primary = Color(0xFF9B6BFF); // 자수정
  static const Color accent = Color(0xFFE0A94A); // 앰버(골드)

  static const Color hp = Color(0xFFE0554E);
  static const Color mp = Color(0xFF4E8CE0);
  static const Color fatigue = Color(0xFF4EB88A);
  static const Color exp = Color(0xFFE0A94A);

  static const Color textPrimary = Color(0xFFEDE7F5);
  static const Color textMuted = Color(0xFF9A8FB0);
  static const Color danger = Color(0xFFE0554E);
}

ThemeData buildAppTheme() {
  final base = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.dark,
    ).copyWith(
      surface: AppColors.surface,
      primary: AppColors.primary,
      secondary: AppColors.accent,
    ),
  );

  return base.copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.background,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
    ),
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.border),
      ),
    ),
    textTheme: base.textTheme.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),
  );
}
