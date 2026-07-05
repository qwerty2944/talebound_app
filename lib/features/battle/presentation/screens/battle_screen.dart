import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/stat_bar.dart';
import '../../../game/domain/entities/character.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/battle_result.dart';
import '../../domain/entities/monster.dart';
import '../../domain/usecases/complete_battle.dart';
import '../../domain/usecases/start_battle.dart';
import '../logic/battle_engine.dart';

enum _Phase { starting, fighting, completing, finished, error }

/// 텍스트 기반 전투. 시작 시 /battle/start, 종료 시 /battle/complete 로 정산한다.
class BattleScreen extends ConsumerStatefulWidget {
  const BattleScreen({super.key, required this.monster});

  final Monster monster;

  @override
  ConsumerState<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends ConsumerState<BattleScreen> {
  _Phase _phase = _Phase.starting;
  String _errorMessage = '';
  String? _battleToken;
  DateTime? _startedAt;
  int _monsterLevel = 1;

  BattleEngine? _engine;
  BattleReward? _reward;
  final List<String> _log = [];
  int _hitSeq = 0;
  int _lastMonsterDamage = 0;
  bool _lastCrit = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _startBattle());
  }

  Character? get _character => ref.read(profileControllerProvider).value;

  Future<void> _startBattle() async {
    final character = _character;
    if (character == null) {
      setState(() {
        _phase = _Phase.error;
        _errorMessage = '캐릭터 정보를 불러올 수 없습니다.';
      });
      return;
    }

    try {
      final started =
          await ref.read(startBattleProvider).call(widget.monster.id);
      if (!mounted) return;
      setState(() {
        _battleToken = started.battleToken;
        _monsterLevel = started.monsterLevel;
        _startedAt = DateTime.now();
        _engine = BattleEngine(player: character, monster: widget.monster);
        _log.add('${widget.monster.nameKo}와(과)의 전투가 시작됐다!');
        _phase = _Phase.fighting;
      });
    } on ApiException catch (e) {
      if (!mounted) return;
      setState(() {
        _phase = _Phase.error;
        _errorMessage = e.code == 'NOT_ENOUGH_FATIGUE'
            ? '피로도가 부족합니다. 잠시 후 다시 시도하세요.'
            : e.message;
      });
    }
  }

  void _onAttack() {
    final engine = _engine;
    if (engine == null || engine.isOver) return;
    final round = engine.attack();
    setState(() {
      _log.addAll(round.logs);
      _hitSeq++;
      _lastMonsterDamage = round.playerDamageDealt;
      _lastCrit = round.playerCrit;
    });
    if (engine.isOver) _finish();
  }

  void _onFlee() {
    final engine = _engine;
    if (engine == null || engine.isOver) return;
    engine.flee();
    setState(() => _log.add('전투에서 도망쳤다.'));
    _finish();
  }

  Future<void> _finish() async {
    final engine = _engine;
    final token = _battleToken;
    if (engine == null || token == null || _phase == _Phase.completing) return;

    setState(() => _phase = _Phase.completing);

    // 승리는 최소 전투 시간(max(3, 몬스터레벨)초)을 넘겨야 서버가 인정한다.
    if (engine.outcome == BattleOutcome.victory && _startedAt != null) {
      final requiredMs = (_monsterLevel < 3 ? 3 : _monsterLevel) * 1000;
      final elapsed = DateTime.now().difference(_startedAt!).inMilliseconds;
      if (elapsed < requiredMs) {
        await Future.delayed(Duration(milliseconds: requiredMs - elapsed));
      }
    }

    try {
      final reward = await ref.read(completeBattleProvider).call(
            battleToken: token,
            result: engine.resultCode,
            currentHp: engine.playerHp,
            currentMp: engine.playerMp,
          );
      if (!mounted) return;
      setState(() {
        _reward = reward;
        _phase = _Phase.finished;
      });
    } on ApiException catch (e) {
      if (!mounted) return;
      setState(() {
        _phase = _Phase.error;
        _errorMessage = e.message;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.monster.nameKo)),
      body: switch (_phase) {
        _Phase.starting => const Center(child: CircularProgressIndicator()),
        _Phase.error => _ErrorView(message: _errorMessage),
        _ => _buildBattle(),
      },
    );
  }

  Widget _buildBattle() {
    final engine = _engine!;
    return Column(
      children: [
        _MonsterPanel(
          monster: widget.monster,
          hp: engine.monsterHp,
          maxHp: engine.monsterMaxHp,
          hitSeq: _hitSeq,
          lastDamage: _lastMonsterDamage,
          crit: _lastCrit,
        ),
        Expanded(child: _BattleLog(log: _log)),
        _PlayerPanel(
          name: _character?.name ?? '나',
          hp: engine.playerHp,
          maxHp: engine.playerMaxHp,
          mp: engine.playerMp,
          maxMp: _character?.maxMp ?? engine.playerMp,
        ),
        _ActionBar(
          enabled: _phase == _Phase.fighting && !engine.isOver,
          onAttack: _onAttack,
          onFlee: _onFlee,
        ),
        if (_phase == _Phase.completing)
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('정산 중...', style: TextStyle(color: AppColors.textMuted)),
          ),
        if (_phase == _Phase.finished && _reward != null)
          _ResultBanner(
            reward: _reward!,
            onClose: () => Navigator.of(context).pop(),
          ),
      ],
    );
  }
}

class _MonsterPanel extends StatelessWidget {
  const _MonsterPanel({
    required this.monster,
    required this.hp,
    required this.maxHp,
    required this.hitSeq,
    required this.lastDamage,
    required this.crit,
  });

  final Monster monster;
  final int hp;
  final int maxHp;
  final int hitSeq;
  final int lastDamage;
  final bool crit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.surfaceAlt, AppColors.background],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 84,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Text(monster.icon, style: const TextStyle(fontSize: 60)),
                if (hitSeq > 0 && lastDamage > 0)
                  _FloatingDamage(
                    key: ValueKey(hitSeq),
                    amount: lastDamage,
                    crit: crit,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text('${monster.nameKo}  Lv.${monster.level}',
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary)),
          const SizedBox(height: 10),
          StatBar(label: 'HP', value: hp, max: maxHp, color: AppColors.hp),
        ],
      ),
    );
  }
}

class _FloatingDamage extends StatefulWidget {
  const _FloatingDamage({super.key, required this.amount, required this.crit});

  final int amount;
  final bool crit;

  @override
  State<_FloatingDamage> createState() => _FloatingDamageState();
}

class _FloatingDamageState extends State<_FloatingDamage> {
  double _t = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) setState(() => _t = 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
      top: _t == 0 ? 24 : -20,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 600),
        opacity: _t == 0 ? 1 : 0,
        child: Text(
          '-${widget.amount}',
          style: TextStyle(
            fontSize: widget.crit ? 30 : 24,
            fontWeight: FontWeight.bold,
            color: widget.crit ? AppColors.accent : AppColors.hp,
          ),
        ),
      ),
    );
  }
}

class _BattleLog extends StatelessWidget {
  const _BattleLog({required this.log});

  final List<String> log;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.background,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView.builder(
        reverse: true,
        itemCount: log.length,
        itemBuilder: (_, i) {
          final line = log[log.length - 1 - i];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Text(line,
                style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          );
        },
      ),
    );
  }
}

class _PlayerPanel extends StatelessWidget {
  const _PlayerPanel({
    required this.name,
    required this.hp,
    required this.maxHp,
    required this.mp,
    required this.maxMp,
  });

  final String name;
  final int hp;
  final int maxHp;
  final int mp;
  final int maxMp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(top: BorderSide(color: AppColors.border)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(Icons.shield, size: 16, color: AppColors.primary),
              const SizedBox(width: 6),
              Text(name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary)),
            ],
          ),
          const SizedBox(height: 10),
          StatBar(label: 'HP', value: hp, max: maxHp, color: AppColors.hp),
          const SizedBox(height: 8),
          StatBar(label: 'MP', value: mp, max: maxMp, color: AppColors.mp),
        ],
      ),
    );
  }
}

class _ActionBar extends StatelessWidget {
  const _ActionBar({
    required this.enabled,
    required this.onAttack,
    required this.onFlee,
  });

  final bool enabled;
  final VoidCallback onAttack;
  final VoidCallback onFlee;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.surface,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: FilledButton.icon(
              onPressed: enabled ? onAttack : null,
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.hp,
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              icon: const Icon(Icons.gavel),
              label: const Text('공격'),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: OutlinedButton.icon(
              onPressed: enabled ? onFlee : null,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.textMuted,
                side: const BorderSide(color: AppColors.border),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              icon: const Icon(Icons.directions_run),
              label: const Text('도주'),
            ),
          ),
        ],
      ),
    );
  }
}

class _ResultBanner extends StatelessWidget {
  const _ResultBanner({required this.reward, required this.onClose});

  final BattleReward reward;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    final isVictory = reward.result == 'victory';
    final title = switch (reward.result) {
      'victory' => '⚔️ 승리!',
      'defeat' => '💀 패배',
      _ => '🏃 도주',
    };
    return Container(
      width: double.infinity,
      color: AppColors.surfaceAlt,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: isVictory ? AppColors.accent : AppColors.textMuted)),
          if (isVictory) ...[
            const SizedBox(height: 8),
            Text('EXP +${reward.exp}   🪙 +${reward.gold}',
                style: const TextStyle(color: AppColors.textPrimary)),
            if (reward.leveledUp)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text('🎉 레벨 업! Lv.${reward.newLevel}',
                    style: const TextStyle(
                        color: AppColors.primary, fontWeight: FontWeight.bold)),
              ),
            if (reward.drops.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                    '획득: ${reward.drops.map((d) => '${d.itemId} x${d.quantity}').join(', ')}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textMuted)),
              ),
          ],
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: onClose,
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
              child: const Text('돌아가기'),
            ),
          ),
        ],
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  const _ErrorView({required this.message});

  final String message;

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
            FilledButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('돌아가기'),
            ),
          ],
        ),
      ),
    );
  }
}
