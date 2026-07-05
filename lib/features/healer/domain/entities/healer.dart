import '../../../game/domain/entities/injury.dart';

/// 치료사 NPC 대사.
class HealerDialogues {
  const HealerDialogues({
    this.greeting = '어서 오세요, 여행자님.',
    this.noInjury = '건강해 보이시네요!',
    this.healSuccess = '치료가 완료되었습니다.',
    this.notEnoughGold = '금화가 부족하시군요...',
    this.farewell = '건강하세요!',
  });

  final String greeting;
  final String noInjury;
  final String healSuccess;
  final String notEnoughGold;
  final String farewell;
}

/// 치료사 NPC. 치료비는 서버가 권위적으로 계산하므로 여기 가격은 표시용이다.
class Healer {
  const Healer({
    required this.id,
    required this.nameKo,
    required this.icon,
    required this.mapId,
    required this.description,
    required this.dialogues,
    required this.pricing,
  });

  final String id;
  final String nameKo;
  final String icon;
  final String mapId;
  final String description;
  final HealerDialogues dialogues;

  /// 부상 등급별 치료비(표시용).
  final Map<InjurySeverity, int> pricing;

  int priceFor(InjurySeverity severity) => pricing[severity] ?? 0;
}
