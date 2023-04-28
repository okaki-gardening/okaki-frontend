// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

//import 'package:okaki/main.dart';
import 'package:okaki/screens/login_screen.dart';

void main() {
  testWidgets('smoke test', (WidgetTester tester) async {
    Widget testWidget = const MediaQuery(
        data: MediaQueryData(), child: MaterialApp(home: LoginScreen()));

    // Build our app and trigger a frame.
    await tester.pumpWidget(testWidget);

    expect(find.text('Login'), findsWidgets);
    //expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    //await tester.tap(find.byIcon(Icons.add));
    //await tester.pump();

    // Verify that our counter has incremented.
    //expect(find.text('0'), findsNothing);
    //expect(find.text('1'), findsOneWidget);
  });
}
