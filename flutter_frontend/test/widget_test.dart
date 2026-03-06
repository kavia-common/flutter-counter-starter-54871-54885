import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('App bar has correct title', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('flutter_frontend'), findsOneWidget);
  });

  testWidgets('Counter increments when FAB is tapped', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Initial count
    expect(find.text('0'), findsOneWidget);

    // Tap increment
    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('FAB shows add icon', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.add), findsOneWidget);
  });
}
