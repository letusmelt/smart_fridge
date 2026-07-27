class FoodItem {
  const FoodItem({
    required this.name,
    required this.emoji,
    required this.quantity,
    this.expiryLabel,
    this.isExpiringSoon = false,
  });

  final String name;
  final String emoji;
  final String quantity;
  final String? expiryLabel;
  final bool isExpiringSoon;
}
