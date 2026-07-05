import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/game_maps.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../../core/widgets/stat_bar.dart';
import '../../../auth/domain/entities/auth_session.dart';
import '../../../auth/presentation/controllers/auth_controller.dart';
import '../../../battle/presentation/screens/monster_list_screen.dart';
import '../../../dungeon/presentation/screens/dungeon_list_screen.dart';
import '../../../inventory/presentation/screens/inventory_screen.dart';
import '../../../quest/presentation/screens/quest_list_screen.dart';
import '../../../shop/presentation/screens/shop_screen.dart';
import '../../../training/presentation/screens/training_screen.dart';
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
    Future<void> go(Widget screen) async {
      await Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => screen));
      await ref.read(profileControllerProvider.notifier).refresh();
    }

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        _CharacterCard(character: character),
        const SizedBox(height: 22),
        const SectionLabel('모험', icon: Icons.explore),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.local_fire_department,
          title: '전투',
          subtitle: '야생 몬스터를 사냥한다',
          color: AppColors.hp,
          onTap: () => go(const MonsterListScreen()),
        ),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.assignment_turned_in,
          title: '퀘스트',
          subtitle: '의뢰를 수행하고 보상을 받는다',
          color: AppColors.accent,
          onTap: () => go(const QuestListScreen()),
        ),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.castle,
          title: '던전',
          subtitle: '웨이브를 돌파해 보스를 처치한다',
          color: AppColors.primary,
          onTap: () => go(const DungeonListScreen()),
        ),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.backpack,
          title: '가방',
          subtitle: '아이템을 확인하고 장비를 착용한다',
          color: AppColors.accent,
          onTap: () => go(const InventoryScreen()),
        ),
        const SizedBox(height: 22),
        const SectionLabel('마을', icon: Icons.home_work),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.storefront,
          title: '상점',
          subtitle: '아이템을 사고 판다',
          color: AppColors.accent,
          onTap: () => go(const ShopScreen()),
        ),
        const SizedBox(height: 12),
        _ActionButton(
          icon: Icons.fitness_center,
          title: '수련',
          subtitle: '무기·마법 숙련도를 단련한다',
          color: AppColors.mp,
          onTap: () => go(const TrainingScreen()),
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
    return GamePanel(
      tint: AppColors.primary,
      glow: true,
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [AppColors.primary, AppColors.accent],
                  ),
                  border: Border.all(color: AppColors.accentBright, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withValues(alpha: 0.5),
                      blurRadius: 12,
                      spreadRadius: -2,
                    ),
                  ],
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 30),
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
                        letterSpacing: 0.3,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        GameBadge(
                          label: 'Lv.${character.level}',
                          color: AppColors.accent,
                          icon: Icons.shield_moon,
                        ),
                        const SizedBox(width: 6),
                        const Icon(Icons.place,
                            size: 13, color: AppColors.textMuted),
                        const SizedBox(width: 2),
                        Flexible(
                          child: Text(mapNameKo(character.mapId),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontSize: 12, color: AppColors.textMuted)),
                        ),
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
          const SizedBox(height: 16),
          Row(
            children: [
              ResourcePill(
                  icon: '🪙',
                  value: '${character.gold}',
                  color: AppColors.accent),
              const SizedBox(width: 10),
              ResourcePill(
                  icon: '💎',
                  value: '${character.gems}',
                  color: AppColors.rarityRare),
            ],
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GamePanel(
      onTap: onTap,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.16),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: color.withValues(alpha: 0.5)),
            ),
            child: Icon(icon, color: color, size: 24),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                        letterSpacing: 0.3)),
                const SizedBox(height: 2),
                Text(subtitle,
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textMuted)),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: AppColors.textFaint),
        ],
      ),
    );
  }
}
