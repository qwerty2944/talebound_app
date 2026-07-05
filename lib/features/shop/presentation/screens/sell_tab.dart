import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';

/// 판매 탭.
///
/// 인벤토리 조회 provider(태스크 #2, flutter-equip)가 main에 머지되면
/// 이 스텁을 실제 인벤토리 목록 + 판매 흐름으로 교체한다.
/// (교체 시 shop_screen.dart의 ShopItemTile / QuantitySheet / showGameSnack 재사용)
class SellTab extends ConsumerWidget {
  const SellTab({super.key, required this.gold, required this.onSold});

  final int gold;

  /// 판매 성공 시 서버가 돌려준 갱신 골드.
  final ValueChanged<int> onSold;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(28),
        child: GamePanel(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('🎒', style: TextStyle(fontSize: 40)),
              const SizedBox(height: 14),
              const Text(
                '인벤토리 연동 대기',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary),
              ),
              const SizedBox(height: 8),
              const Text(
                '인벤토리 기능이 준비되면\n보유 아이템을 이곳에서 판매할 수 있습니다.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: AppColors.textMuted),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
