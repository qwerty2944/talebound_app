import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../game/domain/entities/injury.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/healer.dart';
import '../../domain/usecases/heal_injury.dart';
import '../controllers/healer_list_controller.dart';

/// 레벨 5 이하는 서버가 무료 치료(FREE_HEAL_MAX_LEVEL). 표시만 이 상수를 따른다.
const int _freeHealMaxLevel = 5;

/// 치료사: 힐러 선택 → 내 부상 목록(등급색·치료비) → 즉시 치료.
/// 비용 계산·결제는 서버 권위(`POST /api/npc/heal`).
class HealerScreen extends ConsumerStatefulWidget {
  const HealerScreen({super.key});

  @override
  ConsumerState<HealerScreen> createState() => _HealerScreenState();
}

class _HealerScreenState extends ConsumerState<HealerScreen> {
  int _selectedHealer = 0;
  int? _healingIndex;

  @override
  Widget build(BuildContext context) {
    final healers = ref.watch(healerListProvider);
    final profile = ref.watch(profileControllerProvider);
    final character = profile.asData?.value;
    final gold = character?.gold ?? 0;
    final level = character?.level ?? 1;
    final injuries = character?.injuries ?? const <Injury>[];
    final isFree = level <= _freeHealMaxLevel;

    return Scaffold(
      appBar: AppBar(
        title: const Text('치료사'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Center(
              child: ResourcePill(
                  icon: '🪙', value: '$gold', color: AppColors.accent),
            ),
          ),
        ],
      ),
      body: healers.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Text('치료사를 불러오지 못했습니다\n$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.danger)),
        ),
        data: (list) {
          if (list.isEmpty) {
            return const Center(
              child: Text('치료사가 없습니다',
                  style: TextStyle(color: AppColors.textMuted)),
            );
          }
          final idx = _selectedHealer.clamp(0, list.length - 1);
          final healer = list[idx];
          return Column(
            children: [
              _HealerSelector(
                healers: list,
                selected: idx,
                onSelect: (i) => setState(() => _selectedHealer = i),
              ),
              _HealerGreeting(
                text: injuries.isEmpty
                    ? healer.dialogues.noInjury
                    : healer.dialogues.greeting,
              ),
              if (isFree) const _FreeHealBanner(),
              Expanded(
                child: injuries.isEmpty
                    ? const _NoInjury()
                    : RefreshIndicator(
                        onRefresh: () => ref
                            .read(profileControllerProvider.notifier)
                            .refresh(),
                        child: ListView.separated(
                          padding: const EdgeInsets.all(16),
                          itemCount: injuries.length,
                          separatorBuilder: (_, _) => const SizedBox(height: 10),
                          itemBuilder: (_, i) => _InjuryTile(
                            injury: injuries[i],
                            price: healer.priceFor(injuries[i].severity),
                            free: isFree,
                            gold: gold,
                            busy: _healingIndex != null,
                            healing: _healingIndex == i,
                            onHeal: () => _heal(healer, i),
                          ),
                        ),
                      ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _heal(Healer healer, int injuryIndex) async {
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _healingIndex = injuryIndex);
    try {
      final outcome = await ref.read(healInjuryProvider).call(
            npcId: healer.id,
            injuryIndex: injuryIndex,
          );
      // 골드/부상 목록이 바뀌므로 프로필 최신화.
      await ref.read(profileControllerProvider.notifier).refresh();
      if (outcome.success) {
        showGameSnack(messenger, healer.dialogues.healSuccess,
            icon: '✨', tint: AppColors.success);
      } else {
        showGameSnack(messenger, healer.dialogues.notEnoughGold,
            icon: '⚠️', tint: AppColors.danger);
      }
    } on ApiException catch (e) {
      final msg = e.code == 'NOT_ENOUGH_GOLD'
          ? healer.dialogues.notEnoughGold
          : e.message;
      showGameSnack(messenger, msg, icon: '⚠️', tint: AppColors.danger);
    } finally {
      if (mounted) setState(() => _healingIndex = null);
    }
  }
}

/// 부상 등급 → 강조색.
Color _severityColor(InjurySeverity s) => switch (s) {
      InjurySeverity.light => AppColors.accent,
      InjurySeverity.medium => AppColors.fatigue,
      InjurySeverity.critical => AppColors.danger,
    };

class _HealerSelector extends StatelessWidget {
  const _HealerSelector({
    required this.healers,
    required this.selected,
    required this.onSelect,
  });

  final List<Healer> healers;
  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        itemCount: healers.length,
        separatorBuilder: (_, _) => const SizedBox(width: 10),
        itemBuilder: (_, i) {
          final h = healers[i];
          final active = i == selected;
          return GamePanel(
            tint: active ? AppColors.accent : null,
            glow: active,
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            onTap: () => onSelect(i),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(h.icon, style: const TextStyle(fontSize: 22)),
                const SizedBox(width: 8),
                Text(
                  h.nameKo,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color:
                        active ? AppColors.accentBright : AppColors.textMuted,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _HealerGreeting extends StatelessWidget {
  const _HealerGreeting({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
      child: Row(
        children: [
          const Icon(Icons.chat_bubble_outline,
              size: 14, color: AppColors.textFaint),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                  color: AppColors.textMuted),
            ),
          ),
        ],
      ),
    );
  }
}

class _FreeHealBanner extends StatelessWidget {
  const _FreeHealBanner();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 6, 16, 0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.success.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.success.withValues(alpha: 0.5)),
        ),
        child: const Text(
          '✨ Lv.$_freeHealMaxLevel 이하 무료 치료 대상입니다',
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppColors.success),
        ),
      ),
    );
  }
}

class _NoInjury extends StatelessWidget {
  const _NoInjury();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 120),
        Icon(Icons.health_and_safety, size: 48, color: AppColors.success),
        SizedBox(height: 12),
        Center(
          child: Text('치료할 부상이 없습니다',
              style: TextStyle(color: AppColors.textMuted, fontSize: 15)),
        ),
      ],
    );
  }
}

class _InjuryTile extends StatelessWidget {
  const _InjuryTile({
    required this.injury,
    required this.price,
    required this.free,
    required this.gold,
    required this.busy,
    required this.healing,
    required this.onHeal,
  });

  final Injury injury;
  final int price;
  final bool free;
  final int gold;
  final bool busy;
  final bool healing;
  final VoidCallback onHeal;

  @override
  Widget build(BuildContext context) {
    final color = _severityColor(injury.severity);
    final canAfford = free || gold >= price;
    final healLabel = injury.naturalHealLabel;

    return GamePanel(
      tint: color,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(injury.severity.icon, style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 8),
              Text(injury.severity.nameKo,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: color)),
              const Spacer(),
              GameBadge(
                label: 'HP 회복 -${injury.severity.hpRecoveryReductionPercent}%',
                color: color,
              ),
            ],
          ),
          if (injury.source != null && injury.source!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text('원인: ${injury.source}',
                style: const TextStyle(
                    fontSize: 12, color: AppColors.textMuted)),
          ],
          const SizedBox(height: 4),
          Text(
            injury.naturalHealAt == null
                ? '자연 치유 불가 — 치료 필요'
                : '자연 치유까지: ${healLabel ?? '-'}',
            style: TextStyle(
                fontSize: 12,
                color: injury.naturalHealAt == null
                    ? AppColors.danger
                    : AppColors.textMuted),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: (busy || !canAfford) ? null : onHeal,
              style: FilledButton.styleFrom(
                backgroundColor: free ? AppColors.success : AppColors.primary,
                disabledBackgroundColor: AppColors.surfaceAlt,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: healing
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : Text(free
                      ? '✨ 무료 치료'
                      : canAfford
                          ? '🪙 $price 골드로 즉시 치료'
                          : '골드 부족 (🪙 $price)'),
            ),
          ),
        ],
      ),
    );
  }
}
