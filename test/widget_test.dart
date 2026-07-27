import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_fridge/main.dart';

void main() {
  testWidgets('首页展示冰箱库存和今日推荐', (tester) async {
    await tester.pumpWidget(const SmartFridgeApp());

    expect(find.text('Smart Fridge'), findsOneWidget);
    expect(find.text('欢迎回来！'), findsOneWidget);
    expect(find.text('我的冰箱'), findsOneWidget);
    expect(find.text('鸡蛋'), findsOneWidget);
    expect(find.text('牛奶'), findsOneWidget);
    expect(find.text('菠菜'), findsOneWidget);
    expect(find.text('三文鱼'), findsOneWidget);
    expect(find.text('明天过期'), findsOneWidget);

    await tester.scrollUntilVisible(
      find.text('菠菜炒鸡蛋'),
      200,
      scrollable: find.byType(Scrollable).first,
    );

    expect(find.text('今日推荐'), findsOneWidget);
    expect(find.text('菠菜炒鸡蛋'), findsOneWidget);
  });
}
