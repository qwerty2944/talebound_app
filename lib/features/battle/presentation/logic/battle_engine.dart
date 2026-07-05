import 'dart:math';

import '../../domain/entities/monster.dart';
import '../../../game/domain/entities/character.dart';

enum BattleOutcome { ongoing, victory, defeat, fled }

/// 한 라운드(플레이어 공격 → 몬스터 반격) 결과. UI 연출용 수치 포함.
class RoundResult {
  const RoundResult({
    required this.playerDamageDealt,
    required this.monsterDamageDealt,
    required this.playerCrit,
    required this.logs,
  });

  final int playerDamageDealt;
  final int monsterDamageDealt;
  final bool playerCrit;
  final List<String> logs;
}

/// 클라이언트 권위 텍스트 전투(웹과 동일 구조 — 서버는 최종 HP/결과만 정산).
/// 데미지 공식은 MVP용 단순화 버전.
class BattleEngine {
  BattleEngine({
    required Character player,
    required this.monster,
    int? startHp,
    int? startMp,
  })  : playerMaxHp = player.maxHp,
        playerHp =
            startHp ?? (player.currentHp <= 0 ? player.maxHp : player.currentHp),
        playerMp = startMp ?? player.currentMp,
        monsterMaxHp = monster.hp,
        monsterHp = monster.hp,
        _playerAtk = 6 + (player.stats.str * 1.2).round(),
        _playerDef = (player.stats.con / 2 + player.stats.dex / 4).round();

  final Monster monster;
  final int playerMaxHp;
  final int monsterMaxHp;
  final int _playerAtk;
  final int _playerDef;
  final Random _rng = Random();

  int playerHp;
  int playerMp;
  int monsterHp;
  BattleOutcome outcome = BattleOutcome.ongoing;

  bool get isOver => outcome != BattleOutcome.ongoing;

  /// ±20% 변동.
  int _vary(num base) {
    final factor = 0.8 + _rng.nextDouble() * 0.4;
    return max(1, (base * factor).round());
  }

  RoundResult attack() {
    if (isOver) {
      return const RoundResult(
        playerDamageDealt: 0,
        monsterDamageDealt: 0,
        playerCrit: false,
        logs: [],
      );
    }

    final logs = <String>[];

    // 플레이어 공격 (10% 치명타)
    final crit = _rng.nextDouble() < 0.1;
    var dealt = _vary(_playerAtk - monster.defense);
    if (crit) dealt = (dealt * 1.6).round();
    monsterHp = max(0, monsterHp - dealt);
    logs.add(crit
        ? '⚡ 치명타! ${monster.nameKo}에게 $dealt 피해!'
        : '${monster.nameKo}에게 $dealt 피해를 입혔다.');

    if (monsterHp <= 0) {
      outcome = BattleOutcome.victory;
      logs.add('🏆 ${monster.nameKo}을(를) 쓰러뜨렸다!');
      return RoundResult(
        playerDamageDealt: dealt,
        monsterDamageDealt: 0,
        playerCrit: crit,
        logs: logs,
      );
    }

    // 몬스터 반격
    final taken = _vary(monster.attack - _playerDef);
    playerHp = max(0, playerHp - taken);
    logs.add('${monster.nameKo}의 공격! $taken 피해를 받았다.');

    if (playerHp <= 0) {
      outcome = BattleOutcome.defeat;
      logs.add('💀 쓰러졌다...');
    }

    return RoundResult(
      playerDamageDealt: dealt,
      monsterDamageDealt: taken,
      playerCrit: crit,
      logs: logs,
    );
  }

  /// 도주 — 성공 시 fled. (MVP: 항상 성공)
  void flee() {
    if (isOver) return;
    outcome = BattleOutcome.fled;
  }

  String get resultCode => switch (outcome) {
        BattleOutcome.victory => 'victory',
        BattleOutcome.defeat => 'defeat',
        BattleOutcome.fled => 'fled',
        BattleOutcome.ongoing => 'fled',
      };
}
