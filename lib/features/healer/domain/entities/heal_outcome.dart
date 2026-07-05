/// `POST /api/npc/heal` 결과. 서버가 치료비를 계산·검증한다.
class HealOutcome {
  const HealOutcome({
    required this.success,
    required this.remainingGold,
    this.message,
  });

  final bool success;
  final int remainingGold;
  final String? message;
}
