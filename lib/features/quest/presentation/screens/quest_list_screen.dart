import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/quest.dart';
import '../controllers/quest_list_controller.dart';

/// 퀘스트 목록 — 상태별 구분(수락 가능/진행 중/완료/수령 완료) + 진행도 + 수락/수령.
class QuestListScreen extends ConsumerWidget {
  const QuestListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quests = ref.watch(questListControllerProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('퀘스트')),
      body: quests.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => _ErrorView(
          message: '퀘스트를 불러오지 못했습니다\n$e',
          onRetry: () =>
              ref.read(questListControllerProvider.notifier).refresh(),
        ),
        data: (list) {
          if (list.isEmpty) {
            return const Center(
              child: Text('등록된 퀘스트가 없습니다.',
                  style: TextStyle(color: AppColors.textMuted)),
            );
          }
          final sorted = _sorted(list);
          return RefreshIndicator(
            onRefresh: () =>
                ref.read(questListControllerProvider.notifier).refresh(),
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: sorted.length,
              separatorBuilder: (_, _) => const SizedBox(height: 10),
              itemBuilder: (_, i) => _QuestTile(quest: sorted[i]),
            ),
          );
        },
      ),
    );
  }

  /// 완료(수령 대기) → 진행 중 → 수락 가능 → 수령 완료 순으로 정렬.
  List<Quest> _sorted(List<Quest> list) {
    int rank(QuestStatus s) => switch (s) {
          QuestStatus.completed => 0,
          QuestStatus.accepted => 1,
          QuestStatus.available => 2,
          QuestStatus.claimed => 3,
        };
    final copy = [...list]
      ..sort((a, b) {
        final r = rank(a.status).compareTo(rank(b.status));
        return r != 0 ? r : a.minLevel.compareTo(b.minLevel);
      });
    return copy;
  }
}

class _QuestTile extends ConsumerStatefulWidget {
  const _QuestTile({required this.quest});

  final Quest quest;

  @override
  ConsumerState<_QuestTile> createState() => _QuestTileState();
}

class _QuestTileState extends ConsumerState<_QuestTile> {
  bool _busy = false;

  Quest get quest => widget.quest;

  Future<void> _accept() async {
    setState(() => _busy = true);
    try {
      await ref.read(questListControllerProvider.notifier).accept(quest.id);
      _toast('「${quest.nameKo}」 퀘스트를 수락했습니다.');
    } on ApiException catch (e) {
      _toast(_acceptError(e), error: true);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _claim() async {
    setState(() => _busy = true);
    try {
      final result =
          await ref.read(questListControllerProvider.notifier).claim(quest.id);
      // 보상으로 골드/경험치/레벨이 바뀌므로 프로필 최신화.
      await ref.read(profileControllerProvider.notifier).refresh();
      if (mounted) await _showReward(result);
    } on ApiException catch (e) {
      _toast(_claimError(e), error: true);
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  String _acceptError(ApiException e) => switch (e.code) {
        'LEVEL_TOO_LOW' => e.message,
        'ALREADY_ACCEPTED' => '이미 수락한 퀘스트입니다.',
        _ => e.message,
      };

  String _claimError(ApiException e) => switch (e.code) {
        'OBJECTIVE_INCOMPLETE' => '아직 목표를 달성하지 못했습니다.',
        'ALREADY_CLAIMED' => '이미 보상을 수령했습니다.',
        _ => e.message,
      };

  void _toast(String message, {bool error = false}) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: error ? AppColors.danger : AppColors.surfaceAlt,
      ));
  }

  Future<void> _showReward(QuestClaimResult r) async {
    await showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: AppColors.surface,
        title: const Text('🎁 보상 수령'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('EXP +${r.exp}   🪙 +${r.gold}',
                style: const TextStyle(color: AppColors.textPrimary)),
            if (r.items.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                    '획득: ${r.items.map((i) => '${i.itemId} x${i.quantity}').join(', ')}',
                    style: const TextStyle(
                        fontSize: 13, color: AppColors.textMuted)),
              ),
            if (r.leveledUp)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text('🎉 레벨 업! Lv.${r.newLevel}',
                    style: const TextStyle(
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold)),
              ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('확인'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meta = _statusMeta(quest.status);
    final claimable = quest.status == QuestStatus.completed;
    return GamePanel(
      tint: claimable ? AppColors.accent : null,
      glow: claimable,
      padding: const EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(quest.nameKo,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary)),
              ),
              GameBadge(label: meta.$1, color: meta.$2),
            ],
          ),
          const SizedBox(height: 6),
          Text(quest.descriptionKo,
              style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          const SizedBox(height: 10),
          Row(
            children: [
              _Tag(text: 'Lv.${quest.minLevel}~', color: AppColors.primary),
              const SizedBox(width: 6),
              _Tag(text: _objectiveLabel(quest.objective), color: AppColors.mp),
              const Spacer(),
              Text('EXP ${quest.reward.exp} · 🪙 ${quest.reward.gold}',
                  style: const TextStyle(fontSize: 12, color: AppColors.exp)),
            ],
          ),
          if (quest.killProgressLabel != null) ...[
            const SizedBox(height: 10),
            _KillProgress(
              value: quest.killProgress,
              max: quest.objective.target,
            ),
          ],
          const SizedBox(height: 12),
          _actionButton(),
        ],
      ),
    );
  }

  Widget _actionButton() {
    if (_busy) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 2)),
        ),
      );
    }
    switch (quest.status) {
      case QuestStatus.available:
        return _fullButton('수락하기', AppColors.primary, _accept);
      case QuestStatus.completed:
        return _fullButton('보상 수령', AppColors.accent, _claim);
      case QuestStatus.accepted:
        return _fullButton('진행 중', AppColors.surfaceAlt, null);
      case QuestStatus.claimed:
        return _fullButton('완료됨', AppColors.surfaceAlt, null);
    }
  }

  Widget _fullButton(String label, Color color, VoidCallback? onTap) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onTap,
        style: FilledButton.styleFrom(
          backgroundColor: color,
          disabledBackgroundColor: AppColors.surfaceAlt,
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Text(label),
      ),
    );
  }

  (String, Color) _statusMeta(QuestStatus s) => switch (s) {
        QuestStatus.available => ('수락 가능', AppColors.textMuted),
        QuestStatus.accepted => ('진행 중', AppColors.mp),
        QuestStatus.completed => ('완료', AppColors.accent),
        QuestStatus.claimed => ('수령 완료', AppColors.textMuted),
      };

  String _objectiveLabel(QuestObjective o) => switch (o.type) {
        QuestObjectiveType.kill => '처치 ${o.target}',
        QuestObjectiveType.collect => '수집 ${o.target}',
        QuestObjectiveType.visit => '탐험',
        QuestObjectiveType.unknown => '목표',
      };
}

class _KillProgress extends StatelessWidget {
  const _KillProgress({required this.value, required this.max});

  final int value;
  final int max;

  @override
  Widget build(BuildContext context) {
    final ratio = max <= 0 ? 0.0 : (value / max).clamp(0.0, 1.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('진행도',
                style: TextStyle(fontSize: 11, color: AppColors.textMuted)),
            Text('$value / $max',
                style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: ratio,
            minHeight: 6,
            backgroundColor: AppColors.surfaceAlt,
            valueColor: const AlwaysStoppedAnimation(AppColors.accent),
          ),
        ),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.14),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(text,
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w600, color: color)),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message, required this.onRetry});

  final String message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.error_outline, color: AppColors.danger, size: 40),
            const SizedBox(height: 12),
            Text(message,
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.textPrimary)),
            const SizedBox(height: 20),
            FilledButton(onPressed: onRetry, child: const Text('다시 시도')),
          ],
        ),
      ),
    );
  }
}
