import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

/// 게임 타이틀 로고 — 아이콘 문장(紋章) + "TALEBOUND" 앰버 그라데이션 타이포.
/// 은은한 glow 펄스 애니메이션이 반복된다(과하지 않게 opacity만 흔든다).
class GameLogo extends StatefulWidget {
  const GameLogo({super.key, this.compact = false});

  /// 스플래시 등 좁은 문맥에서 약간 작게 그린다.
  final bool compact;

  @override
  State<GameLogo> createState() => _GameLogoState();
}

class _GameLogoState extends State<GameLogo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 2200),
  )..repeat(reverse: true);

  late final Animation<double> _pulse =
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final iconSize = widget.compact ? 52.0 : 64.0;
    final titleSize = widget.compact ? 30.0 : 36.0;

    return AnimatedBuilder(
      animation: _pulse,
      builder: (context, _) {
        final glow = 0.18 + _pulse.value * 0.22;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 문장(엠블럼): 자수정 발광 원 안의 이야기 책.
            Container(
              width: iconSize + 34,
              height: iconSize + 34,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    AppColors.primary.withValues(alpha: glow),
                    Colors.transparent,
                  ],
                ),
                border: Border.all(
                  color: AppColors.borderStrong
                      .withValues(alpha: 0.5 + _pulse.value * 0.3),
                ),
              ),
              child: Icon(
                Icons.auto_stories,
                size: iconSize,
                color: AppColors.accentBright,
                shadows: [
                  Shadow(
                    color: AppColors.accent.withValues(alpha: glow + 0.2),
                    blurRadius: 22,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            // 타이틀: 앰버 그라데이션 ShaderMask.
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.accentBright,
                  AppColors.accent,
                  Color(0xFFB07A2E),
                ],
              ).createShader(bounds),
              child: Text(
                'TALEBOUND',
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 6,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: AppColors.accent.withValues(alpha: glow),
                      blurRadius: 24,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            // 태그라인: 장식 라인 사이의 한글 부제.
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _taglineRule(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '테일바운드 — 이야기가 시작되는 곳',
                    style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1.2,
                      color: AppColors.textMuted,
                    ),
                  ),
                ),
                _taglineRule(reversed: true),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _taglineRule({bool reversed = false}) {
    return Container(
      width: 34,
      height: 1,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: reversed ? Alignment.centerRight : Alignment.centerLeft,
          end: reversed ? Alignment.centerLeft : Alignment.centerRight,
          colors: [
            Colors.transparent,
            AppColors.accent.withValues(alpha: 0.6),
          ],
        ),
      ),
    );
  }
}

/// 세션 복원 중 표시되는 게임풍 스플래시(로고 + 로딩).
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const GameLogo(compact: true),
            const SizedBox(height: 40),
            const SizedBox(
              width: 26,
              height: 26,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                color: AppColors.accent,
              ),
            ),
            const SizedBox(height: 14),
            Text(
              '모험을 불러오는 중...',
              style: TextStyle(
                fontSize: 12,
                letterSpacing: 0.6,
                color: AppColors.textFaint.withValues(alpha: 0.9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
