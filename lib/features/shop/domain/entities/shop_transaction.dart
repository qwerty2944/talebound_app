/// 구매 결과: 갱신된 골드 + 실제 지급 수량(인벤 여유 부족 시 일부만 지급될 수 있음).
class BuyOutcome {
  const BuyOutcome({
    required this.gold,
    required this.itemId,
    required this.quantity,
  });

  final int gold;
  final String itemId;
  final int quantity;
}

/// 판매 결과: 갱신된 골드.
class SellOutcome {
  const SellOutcome({required this.gold});

  final int gold;
}
