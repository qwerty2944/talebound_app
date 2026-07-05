import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/proficiency.dart';
import '../../domain/entities/trainer.dart';
import '../../domain/usecases/train_proficiency.dart';
import '../controllers/proficiency_list_controller.dart';
import '../controllers/trainer_list_controller.dart';

/// 수련: 훈련사 선택 → 20종 숙련 게이지 + 훈련. 값/골드는 서버 응답으로 갱신.
class TrainingScreen extends ConsumerStatefulWidget {
  const TrainingScreen({super.key});

  @override
  ConsumerState<TrainingScreen> createState() => _TrainingScreenState();
}

class _TrainingScreenState extends ConsumerState<TrainingScreen> {
  int _selectedTrainer = 0;

  /// 훈련 응답으로 갱신된 숙련값(type → value).
  final Map<String, int> _valueOverride = {};

  /// 훈련 응답으로 받은 최신 골드.
  int? _goldOverride;

  /// 현재 훈련 요청 중인 숙련 타입.
  String? _training;

  @override
  Widget build(BuildContext context) {
    final proficiencies = ref.watch(proficiencyListProvider);
    final trainers = ref.watch(trainerListProvider);
    final profileGold =
        ref.watch(profileControllerProvider).asData?.value?.gold ?? 0;
    final gold = _goldOverride ?? profileGold;

    return Scaffold(
      appBar: AppBar(
        title: const Text('수련'),
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
      body: proficiencies.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Text('숙련도를 불러오지 못했습니다\n$e',
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.danger)),
        ),
        data: (list) {
          final trainerList = trainers.asData?.value ?? const <Trainer>[];
          final trainer = trainerList.isEmpty
              ? null
              : trainerList[_selectedTrainer.clamp(0, trainerList.length - 1)];
          final weapons = list
              .where((p) => p.def.category == ProficiencyCategory.weapon)
              .toList();
          final magic = list
              .where((p) => p.def.category == ProficiencyCategory.magic)
              .toList();

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (trainerList.length > 1)
                _TrainerSelector(
                  trainers: trainerList,
                  selected: _selectedTrainer.clamp(0, trainerList.length - 1),
                  onSelect: (i) => setState(() => _selectedTrainer = i),
                ),
              if (trainer != null) _TrainerGreeting(trainer: trainer),
              const SizedBox(height: 8),
              const SectionLabel('무기 숙련', icon: Icons.hardware),
              const SizedBox(height: 12),
              ...weapons.map((p) => _buildTile(p, gold, trainer)),
              const SizedBox(height: 18),
              const SectionLabel('마법 숙련', icon: Icons.auto_awesome),
              const SizedBox(height: 12),
              ...magic.map((p) => _buildTile(p, gold, trainer)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildTile(Proficiency p, int gold, Trainer? trainer) {
    final value = _valueOverride[p.def.id] ?? p.value;
    final eff = Proficiency(def: p.def, value: value);
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: _ProficiencyTile(
        proficiency: eff,
        gold: gold,
        busy: _training == p.def.id,
        anyBusy: _training != null,
        onTrain: () => _train(eff, trainer),
      ),
    );
  }

  Future<void> _train(Proficiency p, Trainer? trainer) async {
    if (p.isMaxed || _training != null) return;
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _training = p.def.id);
    try {
      final res = await ref.read(trainProficiencyProvider).call(p.def.id);
      setState(() {
        _valueOverride[res.type] = res.value;
        _goldOverride = res.gold;
      });
      showGameSnack(
        messenger,
        '${trainer?.dialogues.success ?? '잘했어. 점점 나아지고 있군.'} ${p.def.nameKo} +$kProficiencyGain → ${res.value}',
        icon: '📈',
        tint: AppColors.success,
      );
    } on ApiException catch (e) {
      final msg = switch (e.code) {
        'NOT_ENOUGH_GOLD' =>
          trainer?.dialogues.notEnoughGold ?? '훈련에도 비용이 든다네.',
        'MAXED' => '이미 최대 숙련도입니다',
        _ => e.message,
      };
      showGameSnack(messenger, msg, icon: '⚠️', tint: AppColors.danger);
    } finally {
      if (mounted) setState(() => _training = null);
    }
  }
}

class _TrainerSelector extends StatelessWidget {
  const _TrainerSelector({
    required this.trainers,
    required this.selected,
    required this.onSelect,
  });

  final List<Trainer> trainers;
  final int selected;
  final ValueChanged<int> onSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          for (var i = 0; i < trainers.length; i++) ...[
            if (i > 0) const SizedBox(width: 10),
            Expanded(
              child: GamePanel(
                tint: i == selected ? AppColors.primary : null,
                glow: i == selected,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                onTap: () => onSelect(i),
                child: Row(
                  children: [
                    Text(trainers[i].icon,
                        style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        trainers[i].nameKo,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: i == selected
                              ? AppColors.textPrimary
                              : AppColors.textMuted,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _TrainerGreeting extends StatelessWidget {
  const _TrainerGreeting({required this.trainer});

  final Trainer trainer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          const Icon(Icons.chat_bubble_outline,
              size: 14, color: AppColors.textFaint),
          const SizedBox(width: 6),
          Expanded(
            child: Text(
              trainer.dialogues.train,
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

class _ProficiencyTile extends StatelessWidget {
  const _ProficiencyTile({
    required this.proficiency,
    required this.gold,
    required this.busy,
    required this.anyBusy,
    required this.onTrain,
  });

  final Proficiency proficiency;
  final int gold;
  final bool busy;
  final bool anyBusy;
  final VoidCallback onTrain;

  @override
  Widget build(BuildContext context) {
    final p = proficiency;
    final maxed = p.isMaxed;
    final affordable = gold >= p.cost;
    final pct = (p.value / kMaxProficiency).clamp(0.0, 1.0);
    final canTrain = !maxed && affordable && !anyBusy;

    return GamePanel(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(p.def.icon, style: const TextStyle(fontSize: 20)),
              const SizedBox(width: 8),
              Text(p.def.nameKo,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary)),
              const SizedBox(width: 8),
              GameBadge(label: p.rankKo, color: AppColors.primary),
              const Spacer(),
              Text('${p.value}/$kMaxProficiency',
                  style: const TextStyle(
                      fontSize: 12,
                      color: AppColors.textMuted,
                      fontFeatures: [FontFeature.tabularFigures()])),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: LinearProgressIndicator(
              value: pct,
              minHeight: 6,
              backgroundColor: AppColors.backgroundDeep,
              valueColor: AlwaysStoppedAnimation(
                  maxed ? AppColors.success : AppColors.primary),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: canTrain ? onTrain : null,
              style: FilledButton.styleFrom(
                backgroundColor:
                    maxed ? AppColors.surfaceAlt : AppColors.primary,
                disabledBackgroundColor: AppColors.surfaceAlt,
                padding: const EdgeInsets.symmetric(vertical: 10),
              ),
              child: busy
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                          strokeWidth: 2, color: Colors.white))
                  : Text(
                      maxed
                          ? '✅ 숙련 완성'
                          : '🪙 ${p.cost} 골드로 훈련 (+$kProficiencyGain)',
                      style: TextStyle(
                        fontSize: 13,
                        color: !maxed && affordable
                            ? Colors.white
                            : AppColors.textMuted,
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
