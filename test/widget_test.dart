// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:growth_buddy_ai/main.dart';

void main() {
  testWidgets('GrowthBuddy app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GrowthBuddyApp());

    // アプリバータイトルを検証
    expect(find.text('GrowthBuddy AI'), findsOneWidget);

    // ナビゲーションバーのアイテムを検証
    expect(find.text('ダッシュボード'), findsOneWidget);
    expect(find.text('振り返り'), findsOneWidget);
    expect(find.text('目標'), findsOneWidget);
    expect(find.text('プロフィール'), findsOneWidget);
  });
}
