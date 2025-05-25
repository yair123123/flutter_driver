import 'package:driver_app/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('בדיקת מסך התחברות', (WidgetTester tester) async {
    // מריץ את האפליקציה שלך
    await tester.pumpWidget(const MyApp());

    // בודק אם שדות הקלט קיימים
    final usernameField = find.byKey(Key('usernameField'));
    final idField = find.byKey(Key('idField'));
    final loginButton = find.byKey(Key('loginButton'));

    expect(usernameField, findsOneWidget);
    expect(idField, findsOneWidget);
    expect(loginButton, findsOneWidget);

    // מקליד נתונים
    await tester.enterText(usernameField, '1111');
    await tester.enterText(idField, '1111');

    // לוחץ על כפתור התחברות
    await tester.tap(loginButton);
    await tester.pump(); // מרנדר מחדש

    // אפשר לבדוק אם מופיע טקסט, מעביר מסך, או שיש אינדיקטור טעינה
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
