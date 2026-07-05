/// 부상 등급 — 서버 권위(light/medium/critical).
/// 마비노기 스타일: 최대 HP는 그대로, HP 회복 상한만 감소한다.
enum InjurySeverity { light, medium, critical }

InjurySeverity injurySeverityFromString(String raw) => switch (raw) {
      'medium' => InjurySeverity.medium,
      'critical' => InjurySeverity.critical,
      _ => InjurySeverity.light,
    };

extension InjurySeverityMeta on InjurySeverity {
  String get nameKo => switch (this) {
        InjurySeverity.light => '경상',
        InjurySeverity.medium => '중상',
        InjurySeverity.critical => '치명상',
      };

  String get icon => switch (this) {
        InjurySeverity.light => '🩹',
        InjurySeverity.medium => '🩸',
        InjurySeverity.critical => '💀',
      };

  /// HP 회복 상한 감소율(%) — 웹 INJURY_CONFIG와 동일.
  int get hpRecoveryReductionPercent => switch (this) {
        InjurySeverity.light => 10,
        InjurySeverity.medium => 25,
        InjurySeverity.critical => 50,
      };
}

/// 캐릭터 부상 — characters.injuries JSONB 배열의 한 항목.
/// 리스트 인덱스가 곧 서버 heal 요청의 injuryIndex 이므로 순서를 보존한다.
class Injury {
  const Injury({
    required this.severity,
    this.source,
    this.occurredAt,
    this.naturalHealAt,
  });

  final InjurySeverity severity;

  /// 부상 원인(몬스터 이름 등).
  final String? source;

  /// 발생 시각(ISO).
  final String? occurredAt;

  /// 자연 치유 예정 시각. null 이면 자연 치유 불가(치료 필요).
  final DateTime? naturalHealAt;

  /// 자연 치유까지 남은 시간 라벨. 이미 지났거나 정보가 없으면 null.
  String? get naturalHealLabel {
    final at = naturalHealAt;
    if (at == null) return null;
    final remaining = at.difference(DateTime.now());
    if (remaining.isNegative) return '곧 치유됨';
    final minutes = remaining.inMinutes + 1;
    if (minutes >= 60) {
      return '${minutes ~/ 60}시간 ${minutes % 60}분';
    }
    return '$minutes분';
  }
}
