/// 훈련 결과: 갱신 골드 + 대상 숙련 값/비용.
class TrainResult {
  const TrainResult({
    required this.gold,
    required this.type,
    required this.value,
    required this.cost,
    required this.nextCost,
  });

  final int gold;
  final String type;

  /// 훈련 후 숙련값(+2, 상한 100).
  final int value;

  /// 이번 훈련에 실제 지불한 비용.
  final int cost;

  /// 다음 훈련 예상 비용(최대치면 0).
  final int nextCost;
}
