import '../models/food_item.dart';

abstract final class MockData {
  static const foodItems = <FoodItem>[
    FoodItem(name: '鸡蛋', emoji: '🥚', quantity: '6个'),
    FoodItem(name: '牛奶', emoji: '🥛', quantity: '1盒'),
    FoodItem(
      name: '菠菜',
      emoji: '🥬',
      quantity: '1把',
      expiryLabel: '明天过期',
      isExpiringSoon: true,
    ),
    FoodItem(name: '三文鱼', emoji: '🐟', quantity: '2块'),
  ];

  static const recommendationName = '菠菜炒鸡蛋';
  static const recommendationEmoji = '🥘';
  static const recommendationDescription = '优先消耗即将过期的菠菜，简单又营养';
}
