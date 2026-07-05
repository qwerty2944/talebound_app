import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// 게임풍 패널 컨테이너(그라데이션 + 테두리 + 광). 화면 전반의 카드 기본형.
class GamePanel extends StatelessWidget {
  const GamePanel({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.tint,
    this.glow = false,
    this.radius = 16,
    this.onTap,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final Color? tint;
  final bool glow;
  final double radius;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final content = Container(
      padding: padding,
      decoration: gamePanel(tint: tint, glow: glow, radius: radius),
      child: child,
    );
    if (onTap == null) return content;
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: onTap,
        child: content,
      ),
    );
  }
}

/// 색 배지(상태/등급/레벨). 반투명 배경 + 테두리.
class GameBadge extends StatelessWidget {
  const GameBadge({
    super.key,
    required this.label,
    required this.color,
    this.icon,
    this.filled = false,
  });

  final String label;
  final Color color;
  final IconData? icon;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: icon != null ? 8 : 9, vertical: 3),
      decoration: BoxDecoration(
        color: color.withValues(alpha: filled ? 0.9 : 0.16),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: color.withValues(alpha: 0.55)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon,
                size: 12, color: filled ? Colors.white : color),
            const SizedBox(width: 3),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.2,
              color: filled ? Colors.white : color,
            ),
          ),
        ],
      ),
    );
  }
}

/// 리소스 표시 칩(골드/젬 등) — 이모지 아이콘 + 라벨 + 값.
class ResourcePill extends StatelessWidget {
  const ResourcePill({
    super.key,
    required this.icon,
    required this.value,
    required this.color,
  });

  final String icon;
  final String value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.backgroundDeep.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.4)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(icon, style: const TextStyle(fontSize: 15)),
          const SizedBox(width: 6),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: color,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
        ],
      ),
    );
  }
}

/// 전투/던전 로그 문구를 키워드로 색 구분(게임 로그 톤).
Color battleLogColor(String line) {
  if (line.contains('치명타')) return AppColors.accentBright;
  if (line.contains('쓰러뜨렸다') ||
      line.contains('🏆') ||
      line.contains('승리') ||
      line.contains('클리어')) {
    return AppColors.success;
  }
  if (line.contains('쓰러졌다') || line.contains('💀')) return AppColors.danger;
  if (line.contains('나타났다') || line.contains('웨이브')) {
    return AppColors.accent;
  }
  if (line.contains('피해를 받았다') || line.contains('공격!')) {
    return AppColors.hp.withValues(alpha: 0.85);
  }
  if (line.contains('피해를 입혔다')) return AppColors.textPrimary;
  return AppColors.textMuted;
}

/// 섹션 소제목(장식 라인 + 라벨).
class SectionLabel extends StatelessWidget {
  const SectionLabel(this.text, {super.key, this.icon});

  final String text;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (icon != null) ...[
          Icon(icon, size: 15, color: AppColors.accent),
          const SizedBox(width: 6),
        ],
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.bold,
            color: AppColors.accent,
            letterSpacing: 1.2,
          ),
        ),
        const SizedBox(width: 10),
        const Expanded(child: Divider(color: AppColors.border, height: 1)),
      ],
    );
  }
}
