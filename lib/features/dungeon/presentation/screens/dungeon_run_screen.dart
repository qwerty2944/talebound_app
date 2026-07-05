import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/api_exception.dart';
import '../../../../core/theme/app_theme.dart';
import '../../../../core/widgets/game_widgets.dart';
import '../../../../core/widgets/stat_bar.dart';
import '../../../battle/domain/entities/monster.dart';
import '../../../battle/presentation/logic/battle_engine.dart';
import '../../../game/domain/entities/character.dart';
import '../../../game/presentation/controllers/profile_controller.dart';
import '../../domain/entities/dungeon.dart';
import '../../domain/entities/dungeon_run.dart';
import '../../domain/usecases/advance_dungeon.dart';
import '../../domain/usecases/start_dungeon.dart';
import '../controllers/dungeon_list_controller.dart';

enum _Phase { starting, fighting, settling, cleared, defeat, retreat, error }

/// 던전 런 — 웨이브 연속 전투. 승리 시 /dungeon/advance 로 다음 웨이브 토큰을 받고,
/// HP/MP는 웨이브 간 그대로 이어진다(회복 없음). 마지막 웨이브 클리어 시 클리어 보상.
class DungeonRunScreen extends ConsumerStatefulWidget {
  const DungeonRunScreen({super.key, required this.dungeon});

  final Dungeon dungeon;

  @override
  ConsumerState<DungeonRunScreen> createState() => _DungeonRunScreenState();
}

class _DungeonRunScreenState extends ConsumerState<DungeonRunScreen> {
  _Phase _phase = _Phase.starting;
  String _errorMessage = '';

  String? _runToken;
  String? _battleToken;
  int _wave = 0;
  int _totalWaves = 1;

  Monster? _monster;
  BattleEngine? _engine;
  final List<String> _log = [];
  int _hitSeq = 0;
  int _lastDamage = 0;
  bool _lastCrit = false;

  // 누적 보상.
  int _sumExp = 0;
  int _sumGold = 0;
  DungeonAdvanceResult? _clearResult;

  Map<String, Monster> _catalog = const {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _start());
  }

  Character? get _character => ref.read(profileControllerProvider).value;

  /// 서버가 준 monster{id,level}을 번들 스탯으로 해석. 없으면 레벨 기반 폴백.
  Monster _resolveMonster(String id, int level) {
    final base = _catalog[id];
    if (base != null) {
      return Monster(
        id: base.id,
        nameKo: base.nameKo,
        icon: base.icon,
        rank: base.rank,
        level: level,
        element: base.element,
        mapIds: base.mapIds,
        hp: base.hp,
        attack: base.attack,
        defense: base.defense,
        speed: base.speed,
        exp: base.exp,
        gold: base.gold,
      );
    }
    return Monster(
      id: id,
      nameKo: id,
      icon: '❔',
      rank: 'normal',
      level: level,
      element: 'none',
      mapIds: const [],
      hp: 40 + level * 12,
      attack: 6 + level * 2,
      defense: level,
      speed: 8,
      exp: 0,
      gold: 0,
    );
  }

  Future<void> _start() async {
    final character = _character;
    if (character == null) {
      _fail('캐릭터 정보를 불러올 수 없습니다.');
      return;
    }
    try {
      _catalog = await ref.read(monsterCatalogProvider.future);
      final run =
          await ref.read(startDungeonProvider).call(widget.dungeon.id);
      if (!mounted) return;
      final monster = _resolveMonster(run.monsterId, run.monsterLevel);
      setState(() {
        _runToken = run.runToken;
        _battleToken = run.battleToken;
        _wave = run.wave;
        _totalWaves = run.totalWaves;
        _monster = monster;
        _engine = BattleEngine(player: character, monster: monster);
        _log
          ..clear()
          ..add('🏛️ ${widget.dungeon.nameKo} 진입 — 웨이브 ${run.waveNumber} 시작!')
          ..add('${monster.nameKo}이(가) 나타났다!');
        _phase = _Phase.fighting;
      });
    } on ApiException catch (e) {
      _fail(switch (e.code) {
        'LEVEL_TOO_LOW' => e.message,
        'NOT_ENOUGH_FATIGUE' => '피로도가 부족합니다.',
        _ => e.message,
      });
    } catch (e) {
      _fail('던전을 시작할 수 없습니다: $e');
    }
  }

  void _fail(String message) {
    if (!mounted) return;
    setState(() {
      _phase = _Phase.error;
      _errorMessage = message;
    });
  }

  void _onAttack() {
    final engine = _engine;
    if (engine == null || engine.isOver || _phase != _Phase.fighting) return;
    final round = engine.attack();
    setState(() {
      _log.addAll(round.logs);
      _hitSeq++;
      _lastDamage = round.playerDamageDealt;
      _lastCrit = round.playerCrit;
    });
    if (engine.isOver) {
      if (engine.outcome == BattleOutcome.victory) {
        _advance();
      } else {
        setState(() => _phase = _Phase.defeat);
      }
    }
  }

  void _onRetreat() {
    final engine = _engine;
    if (engine == null || engine.isOver) return;
    // 던전 포기 — advance 호출 없이 런 종료(진행분 보상은 이미 정산됨).
    setState(() {
      _log.add('던전에서 후퇴했다.');
      _phase = _Phase.retreat;
    });
  }

  Future<void> _advance() async {
    final engine = _engine;
    final runToken = _runToken;
    final battleToken = _battleToken;
    if (engine == null || runToken == null || battleToken == null) return;

    setState(() => _phase = _Phase.settling);
    try {
      final result = await ref.read(advanceDungeonProvider).call(
            runToken: runToken,
            battleToken: battleToken,
            currentHp: engine.playerHp,
            currentMp: engine.playerMp,
          );
      if (!mounted) return;
      _sumExp += result.waveReward.exp;
      _sumGold += result.waveReward.gold;

      if (result.cleared) {
        setState(() {
          _clearResult = result;
          _log.add('🏆 던전을 클리어했다!');
          _phase = _Phase.cleared;
        });
        return;
      }

      // 다음 웨이브 — HP/MP 이어받기.
      final next = result.next!;
      final carriedHp = engine.playerHp;
      final carriedMp = engine.playerMp;
      final monster = _resolveMonster(next.monsterId, next.monsterLevel);
      final character = _character!;
      setState(() {
        _runToken = next.runToken;
        _battleToken = next.battleToken;
        _wave = next.wave;
        _totalWaves = next.totalWaves;
        _monster = monster;
        _engine = BattleEngine(
          player: character,
          monster: monster,
          startHp: carriedHp,
          startMp: carriedMp,
        );
        _hitSeq = 0;
        _lastDamage = 0;
        _log
          ..add('— 웨이브 ${next.waveNumber} / ${next.totalWaves} —')
          ..add('${monster.nameKo}이(가) 나타났다!');
        _phase = _Phase.fighting;
      });
    } on ApiException catch (e) {
      _fail(e.message);
    } catch (e) {
      _fail('웨이브 진행 중 오류: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.dungeon.nameKo)),
      body: switch (_phase) {
        _Phase.starting =>
          const Center(child: CircularProgressIndicator()),
        _Phase.error => _ErrorView(message: _errorMessage),
        _ => _buildRun(),
      },
    );
  }

  Widget _buildRun() {
    final engine = _engine!;
    final monster = _monster!;
    final isBoss = _wave >= _totalWaves - 1;
    return Column(
      children: [
        _WaveHeader(
          wave: _wave + 1,
          totalWaves: _totalWaves,
          isBoss: isBoss,
        ),
        _MonsterPanel(
          monster: monster,
          hp: engine.monsterHp,
          maxHp: engine.monsterMaxHp,
          hitSeq: _hitSeq,
          lastDamage: _lastDamage,
          crit: _lastCrit,
          isBoss: isBoss,
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
          onRetreat: _onRetreat,
        ),
        if (_phase == _Phase.settling)
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('웨이브 정산 중...',
                style: TextStyle(color: AppColors.textMuted)),
          ),
        if (_phase == _Phase.cleared && _clearResult != null)
          _ClearBanner(
            result: _clearResult!,
            sumExp: _sumExp,
            sumGold: _sumGold,
            onClose: () => Navigator.of(context).pop(),
          ),
        if (_phase == _Phase.defeat)
          _EndBanner(
            title: '💀 전멸',
            subtitle: '던전 공략에 실패했습니다.\n획득 EXP $_sumExp · 🪙 $_sumGold',
            onClose: () => Navigator.of(context).pop(),
          ),
        if (_phase == _Phase.retreat)
          _EndBanner(
            title: '🏃 후퇴',
            subtitle: '던전에서 후퇴했습니다.\n획득 EXP $_sumExp · 🪙 $_sumGold',
            onClose: () => Navigator.of(context).pop(),
          ),
      ],
    );
  }
}

class _WaveHeader extends StatelessWidget {
  const _WaveHeader({
    required this.wave,
    required this.totalWaves,
    required this.isBoss,
  });

  final int wave;
  final int totalWaves;
  final bool isBoss;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (var i = 1; i <= totalWaves; i++) ...[
            Icon(
              i < wave
                  ? Icons.check_circle
                  : (i == wave ? Icons.radio_button_checked : Icons.circle_outlined),
              size: 16,
              color: i < wave
                  ? AppColors.accent
                  : (i == wave ? AppColors.primary : AppColors.textMuted),
            ),
            if (i < totalWaves) const SizedBox(width: 6),
          ],
          const SizedBox(width: 12),
          Text(
            isBoss ? '웨이브 $wave/$totalWaves · 보스' : '웨이브 $wave/$totalWaves',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isBoss ? AppColors.danger : AppColors.textPrimary,
            ),
          ),
        ],
      ),
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
    required this.isBoss,
  });

  final Monster monster;
  final int hp;
  final int maxHp;
  final int hitSeq;
  final int lastDamage;
  final bool crit;
  final bool isBoss;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
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
                Text(monster.icon,
                    style: TextStyle(fontSize: isBoss ? 72 : 56)),
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
              style: TextStyle(
                  fontSize: isBoss ? 18 : 16,
                  fontWeight: FontWeight.bold,
                  color: isBoss ? AppColors.danger : AppColors.textPrimary)),
          const SizedBox(height: 10),
          StatBar(
            label: 'HP',
            value: hp,
            max: maxHp,
            color: isBoss ? AppColors.danger : AppColors.hp,
          ),
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
                style: TextStyle(
                    fontSize: 13,
                    color: battleLogColor(line),
                    fontWeight: i == 0 ? FontWeight.w600 : FontWeight.normal)),
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
    required this.onRetreat,
  });

  final bool enabled;
  final VoidCallback onAttack;
  final VoidCallback onRetreat;

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
              onPressed: enabled ? onRetreat : null,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.textMuted,
                side: const BorderSide(color: AppColors.border),
                padding: const EdgeInsets.symmetric(vertical: 16),
              ),
              icon: const Icon(Icons.directions_run),
              label: const Text('후퇴'),
            ),
          ),
        ],
      ),
    );
  }
}

class _ClearBanner extends StatelessWidget {
  const _ClearBanner({
    required this.result,
    required this.sumExp,
    required this.sumGold,
    required this.onClose,
  });

  final DungeonAdvanceResult result;
  final int sumExp;
  final int sumGold;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.surfaceAlt,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🏆 던전 클리어!',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.accent)),
          const SizedBox(height: 10),
          Text('웨이브 보상 합계  EXP +$sumExp   🪙 +$sumGold',
              style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
          const SizedBox(height: 6),
          Text('클리어 보너스  EXP +${result.clearExp}   🪙 +${result.clearGold}',
              style: const TextStyle(color: AppColors.textPrimary)),
          if (result.clearItems.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                  '획득: ${result.clearItems.map((i) => '${i.itemId} x${i.quantity}').join(', ')}',
                  textAlign: TextAlign.center,
                  style:
                      const TextStyle(fontSize: 12, color: AppColors.textMuted)),
            ),
          if (result.leveledUp)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text('🎉 레벨 업! Lv.${result.newLevel}',
                  style: const TextStyle(
                      color: AppColors.primary, fontWeight: FontWeight.bold)),
            ),
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

class _EndBanner extends StatelessWidget {
  const _EndBanner({
    required this.title,
    required this.subtitle,
    required this.onClose,
  });

  final String title;
  final String subtitle;
  final VoidCallback onClose;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.surfaceAlt,
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textMuted)),
          const SizedBox(height: 8),
          Text(subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.textPrimary)),
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
            Builder(
              builder: (context) => FilledButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('돌아가기'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
