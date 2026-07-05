import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// 게임풍 리소스 바(HP/MP/피로도/경험치).
/// 라벨 + 수치 + 부드러운 채움 애니메이션 + 상단 하이라이트 시인.
class StatBar extends StatelessWidget {
  const StatBar({
    super.key,
    required this.label,
    required this.value,
    required this.max,
    required this.color,
    this.icon,
    this.showNumbers = true,
    this.height = 12,
  });

  final String label;
  final num value;
  final num max;
  final Color color;
  final IconData? icon;
  final bool showNumbers;
  final double height;

  @override
  Widget build(BuildContext context) {
    final ratio = max <= 0 ? 0.0 : (value / max).clamp(0.0, 1.0).toDouble();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (icon != null) ...[
              Icon(icon, size: 14, color: color),
              const SizedBox(width: 4),
            ],
            Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.textMuted,
                letterSpacing: 0.3,
              ),
            ),
            const Spacer(),
            if (showNumbers)
              Text(
                '${value.round()} / ${max.round()}',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textPrimary,
                  fontFeatures: [FontFeature.tabularFigures()],
                ),
              ),
          ],
        ),
        const SizedBox(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(height),
          child: Stack(
            children: [
              Container(
                height: height,
                decoration: BoxDecoration(
                  color: AppColors.backgroundDeep,
                  border: Border.all(
                      color: AppColors.border.withValues(alpha: 0.6),
                      width: 0.5),
                ),
              ),
              AnimatedFractionallySizedBox(
                duration: const Duration(milliseconds: 350),
                curve: Curves.easeOut,
                widthFactor: ratio,
                child: Container(
                  height: height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.lerp(color, Colors.white, 0.35)!,
                        color,
                        Color.lerp(color, Colors.black, 0.25)!,
                      ],
                      stops: const [0, 0.5, 1],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color.withValues(alpha: 0.5),
                        blurRadius: 6,
                        spreadRadius: -1,
                      ),
                    ],
                  ),
                ),
              ),
              // 상단 유리 하이라이트.
              Positioned(
                left: 0,
                right: 0,
                top: 0,
                child: FractionallySizedBox(
                  widthFactor: ratio,
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: height * 0.4,
                    margin: EdgeInsets.symmetric(horizontal: height * 0.3),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.18),
                      borderRadius: BorderRadius.circular(height),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
