import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/game_maps.dart';
import '../../../../core/theme/app_theme.dart';
import '../../domain/entities/monster.dart';
import '../controllers/monster_list_controller.dart';
import 'battle_screen.dart';

/// 사냥 가능한 몬스터 목록. 탭하면 전투 화면으로 진입한다.
class MonsterListScreen extends ConsumerWidget {
  const MonsterListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final monsters = ref.watch(monsterListProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('몬스터 사냥')),
      body: monsters.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Text('몬스터 목록을 불러오지 못했습니다\n$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.danger)),
        ),
        data: (list) => ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: list.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (_, i) => _MonsterTile(monster: list[i]),
        ),
      ),
    );
  }
}

class _MonsterTile extends StatelessWidget {
  const _MonsterTile({required this.monster});

  final Monster monster;

  @override
  Widget build(BuildContext context) {
    final map = monster.mapIds.isEmpty ? '-' : mapNameKo(monster.mapIds.first);
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => BattleScreen(monster: monster)),
        ),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Text(monster.icon, style: const TextStyle(fontSize: 30)),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(monster.nameKo,
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textPrimary)),
                        const SizedBox(width: 6),
                        Text('Lv.${monster.level}',
                            style: const TextStyle(
                                fontSize: 12, color: AppColors.primary)),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Text('$map · HP ${monster.hp} · 공격 ${monster.attack}',
                        style: const TextStyle(
                            fontSize: 12, color: AppColors.textMuted)),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('EXP ${monster.exp}',
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.exp)),
                  Text('🪙 ${monster.gold}',
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.accent)),
                ],
              ),
              const SizedBox(width: 4),
              const Icon(Icons.chevron_right, color: AppColors.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}
