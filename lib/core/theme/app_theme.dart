import 'package:flutter/material.dart';

/// 다크 판타지 게임 톤. 웹의 디자인 언어(어두운 배경 + 앰버/자수정 강조)를 반영한다.
class AppColors {
  AppColors._();

  static const Color background = Color(0xFF0E0B14);
  static const Color backgroundDeep = Color(0xFF07050C);
  static const Color surface = Color(0xFF1A1522);
  static const Color surfaceAlt = Color(0xFF241C30);
  static const Color border = Color(0xFF3A2E4D);
  static const Color borderStrong = Color(0xFF5A4880);

  static const Color primary = Color(0xFF9B6BFF); // 자수정
  static const Color primaryDeep = Color(0xFF6B3FCC);
  static const Color accent = Color(0xFFE0A94A); // 앰버(골드)
  static const Color accentBright = Color(0xFFF5C560);

  static const Color hp = Color(0xFFE0554E);
  static const Color mp = Color(0xFF4E8CE0);
  static const Color fatigue = Color(0xFF4EB88A);
  static const Color exp = Color(0xFFE0A94A);

  static const Color textPrimary = Color(0xFFEDE7F5);
  static const Color textMuted = Color(0xFF9A8FB0);
  static const Color textFaint = Color(0xFF6B6280);
  static const Color danger = Color(0xFFE0554E);
  static const Color success = Color(0xFF4EB88A);

  // 등급(rarity) / 몬스터 랭크 색 체계.
  static const Color rarityCommon = Color(0xFF9A8FB0);
  static const Color rarityUncommon = Color(0xFF4EB88A);
  static const Color rarityRare = Color(0xFF4E8CE0);
  static const Color rarityEpic = Color(0xFF9B6BFF);
  static const Color rarityLegendary = Color(0xFFE0A94A);
  static const Color rarityBoss = Color(0xFFE0554E);
}

/// 몬스터 랭크/등급 문자열 → 강조 색.
Color rankColor(String rank) => switch (rank.toLowerCase()) {
      'boss' => AppColors.rarityBoss,
      'legendary' => AppColors.rarityLegendary,
      'epic' || 'elite' => AppColors.rarityEpic,
      'rare' => AppColors.rarityRare,
      'uncommon' || 'magic' => AppColors.rarityUncommon,
      _ => AppColors.rarityCommon,
    };

/// 게임풍 패널 배경(반투명 그라데이션 + 테두리 + 은은한 광).
BoxDecoration gamePanel({
  Color? tint,
  double radius = 16,
  bool glow = false,
}) {
  final accent = tint ?? AppColors.border;
  return BoxDecoration(
    borderRadius: BorderRadius.circular(radius),
    gradient: const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Color(0xFF201A2C), Color(0xFF150F1E)],
    ),
    border: Border.all(color: accent.withValues(alpha: tint != null ? 0.55 : 1)),
    boxShadow: glow
        ? [
            BoxShadow(
              color: accent.withValues(alpha: 0.28),
              blurRadius: 18,
              spreadRadius: -2,
            ),
          ]
        : const [
            BoxShadow(
              color: Color(0x66000000),
              blurRadius: 10,
              offset: Offset(0, 4),
            ),
          ],
  );
}

/// 화면 전체 배경 그라데이션(짙은 남색/흑색 + 상단 자수정 은은한 발광).
const BoxDecoration appBackground = BoxDecoration(
  gradient: RadialGradient(
    center: Alignment(0, -0.85),
    radius: 1.3,
    colors: [Color(0xFF1C1230), AppColors.backgroundDeep],
    stops: [0, 0.85],
  ),
);

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
      error: AppColors.danger,
    ),
  );

  return base.copyWith(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        letterSpacing: 0.5,
      ),
    ),
    cardTheme: CardThemeData(
      color: AppColors.surface,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: AppColors.border),
      ),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.surfaceAlt,
      contentTextStyle: const TextStyle(color: AppColors.textPrimary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: AppColors.border),
      ),
      behavior: SnackBarBehavior.floating,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: AppColors.surface,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
        side: const BorderSide(color: AppColors.borderStrong),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: const TextStyle(
            fontWeight: FontWeight.bold, letterSpacing: 0.4),
      ),
    ),
    textTheme: base.textTheme.apply(
      bodyColor: AppColors.textPrimary,
      displayColor: AppColors.textPrimary,
    ),
  );
}
