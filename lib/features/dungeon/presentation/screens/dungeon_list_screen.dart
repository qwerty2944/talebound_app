import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/dungeon.dart';
import '../controllers/dungeon_list_controller.dart';
import 'dungeon_run_screen.dart';

/// 입장 가능한 던전 목록. 탭하면 던전 런(웨이브 전투)으로 진입한다.
class DungeonListScreen extends ConsumerWidget {
  const DungeonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dungeons = ref.watch(dungeonListProvider);
    final character = ref.watch(profileControllerProvider).value;
    final level = character?.level ?? 1;

    return Scaffold(
      appBar: AppBar(title: const Text('던전')),
      body: dungeons.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Text('던전 목록을 불러오지 못했습니다\n$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.danger)),
        ),
        data: (list) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: list.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (_, i) => _DungeonCard(dungeon: list[i], level: level),
        ),
      ),
    );
  }
}

class _DungeonCard extends ConsumerWidget {
  const _DungeonCard({required this.dungeon, required this.level});

  final Dungeon dungeon;
  final int level;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locked = level < dungeon.minLevel;
    return Opacity(
      opacity: locked ? 0.62 : 1,
      child: GamePanel(
        tint: locked ? null : AppColors.rarityBoss,
        glow: !locked,
        onTap: locked
            ? () => ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(SnackBar(
                content: Text('레벨이 부족합니다 (필요 Lv.${dungeon.minLevel})'),
                backgroundColor: AppColors.danger,
              ))
            : () async {
                await Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => DungeonRunScreen(dungeon: dungeon),
                ));
                await ref.read(profileControllerProvider.notifier).refresh();
              },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.rarityBoss.withValues(alpha: 0.12),
                    border: Border.all(
                        color: AppColors.rarityBoss.withValues(alpha: 0.45)),
                  ),
                  child: Text(dungeon.icon, style: const TextStyle(fontSize: 30)),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dungeon.nameKo,
                          style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary)),
                      const SizedBox(height: 3),
                      Text('${dungeon.totalWaves}웨이브 · 보스전',
                          style: const TextStyle(
                              fontSize: 12, color: AppColors.textMuted)),
                    ],
                  ),
                ),
                if (locked)
                  const Icon(Icons.lock, color: AppColors.textMuted, size: 20)
                else
                  const Icon(Icons.chevron_right, color: AppColors.textFaint),
              ],
            ),
            const SizedBox(height: 10),
            Text(dungeon.descriptionKo,
                style:
                    const TextStyle(fontSize: 13, color: AppColors.textMuted)),
            const SizedBox(height: 12),
            Row(
              children: [
                GameBadge(
                    label: 'Lv.${dungeon.minLevel}+',
                    color: locked ? AppColors.danger : AppColors.primary),
                const SizedBox(width: 6),
                GameBadge(
                    label: '피로도 ${dungeon.fatigueCost}',
                    color: AppColors.fatigue,
                    icon: Icons.bolt),
                const Spacer(),
                Text('클리어 🪙 ${dungeon.clearGold}',
                    style: const TextStyle(fontSize: 12, color: AppColors.exp)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
