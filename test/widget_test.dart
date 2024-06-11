import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:jobsheet7/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: TeksUtama()));

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsNothing);
    expect(find.text('Ana Safitri'), findsOneWidget);

    // Tap the 'refresh' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.refresh));
    await tester.pump();

    // Verify that our counter has incremented.
    // Since we have only one name in the list, it will remain the same.
    expect(find.text('Ana Safitri'), findsOneWidget);
  });
}
