import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/game_maps.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/stat_bar.dart';
import '../../../auth/domain/entities/auth_session.dart';
import '../../../auth/presentation/controllers/auth_controller.dart';
import '../../../battle/presentation/screens/monster_list_screen.dart';
import '../../domain/entities/character.dart';
import '../controllers/profile_controller.dart';

/// 게임 홈: 캐릭터 요약(리소스 바) + 현재 맵 + 전투 진입.
class GameHomeScreen extends ConsumerWidget {
  const GameHomeScreen({super.key, required this.session});

  final AuthSession session;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(profileControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('테일바운드'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: '로그아웃',
            onPressed: () => ref.read(authControllerProvider.notifier).signOut(),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.read(profileControllerProvider.notifier).refresh(),
        child: profile.when(
          loading: () => const _CenteredScroll(child: CircularProgressIndicator()),
          error: (e, _) => _CenteredScroll(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text('프로필을 불러오지 못했습니다\n$e',
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: AppColors.danger)),
            ),
          ),
          data: (character) {
            if (character == null) {
              return const _CenteredScroll(
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Text(
                    '아직 캐릭터가 없습니다.\n웹에서 캐릭터를 먼저 생성해 주세요.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.textMuted),
                  ),
                ),
              );
            }
            return _HomeBody(character: character);
          },
        ),
      ),
    );
  }
}

class _CenteredScroll extends StatelessWidget {
  const _CenteredScroll({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Center(child: child),
        ),
      ],
    );
  }
}

class _HomeBody extends ConsumerWidget {
  const _HomeBody({required this.character});

  final Character character;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _CharacterCard(character: character),
        const SizedBox(height: 20),
        _ActionButton(
          icon: Icons.local_fire_department,
          label: '전투 — 몬스터 사냥',
          onTap: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const MonsterListScreen()),
            );
            // 전투 후 프로필 최신화
            await ref.read(profileControllerProvider.notifier).refresh();
          },
        ),
      ],
    );
  }
}

class _CharacterCard extends StatelessWidget {
  const _CharacterCard({required this.character});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.accent],
                    ),
                    border: Border.all(color: AppColors.border),
                  ),
                  child: const Icon(Icons.person, color: Colors.white),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        character.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Row(
                        children: [
                          _Chip(text: 'Lv.${character.level}', color: AppColors.primary),
                          const SizedBox(width: 6),
                          Icon(Icons.place, size: 13, color: AppColors.textMuted),
                          const SizedBox(width: 2),
                          Text(mapNameKo(character.mapId),
                              style: const TextStyle(
                                  fontSize: 12, color: AppColors.textMuted)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            StatBar(
              label: 'HP',
              icon: Icons.favorite,
              value: character.currentHp,
              max: character.maxHp,
              color: AppColors.hp,
            ),
            const SizedBox(height: 10),
            StatBar(
              label: 'MP',
              icon: Icons.auto_awesome,
              value: character.currentMp,
              max: character.maxMp,
              color: AppColors.mp,
            ),
            const SizedBox(height: 10),
            StatBar(
              label: '피로도',
              icon: Icons.bolt,
              value: character.fatigue,
              max: character.maxFatigue,
              color: AppColors.fatigue,
            ),
            const SizedBox(height: 10),
            StatBar(
              label: 'EXP',
              icon: Icons.star,
              value: character.experience,
              max: character.expToNextLevel,
              color: AppColors.exp,
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                _Resource(icon: '🪙', label: '골드', value: '${character.gold}'),
                const SizedBox(width: 20),
                _Resource(icon: '💎', label: '젬', value: '${character.gems}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Chip extends StatelessWidget {
  const _Chip({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.18),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: color.withValues(alpha: 0.5)),
      ),
      child: Text(text,
          style: TextStyle(
              fontSize: 12, fontWeight: FontWeight.bold, color: color)),
    );
  }
}

class _Resource extends StatelessWidget {
  const _Resource({required this.icon, required this.label, required this.value});

  final String icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(icon, style: const TextStyle(fontSize: 18)),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label,
                style: const TextStyle(fontSize: 11, color: AppColors.textMuted)),
            Text(value,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: AppColors.accent)),
          ],
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.border),
          ),
          child: Row(
            children: [
              Icon(icon, color: AppColors.accent),
              const SizedBox(width: 12),
              Text(label,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.textPrimary)),
              const Spacer(),
              const Icon(Icons.chevron_right, color: AppColors.textMuted),
            ],
          ),
        ),
      ),
    );
  }
}
