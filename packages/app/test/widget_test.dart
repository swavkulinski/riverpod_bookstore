// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod_bookstore_app/main.dart';

void main() {
  testWidgets('Navigate through category', (WidgetTester tester) async {
    await tester.pumpWidget(const ProviderScope(child: MyApp()));

    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Categories'), findsOneWidget);

    await tester.tap(find.text('Categories'));
    await tester.pumpAndSettle();

    expect(find.text('Science Fiction'), findsOneWidget);
    expect(find.text('Fantasy'), findsOneWidget);

    await tester.tap(find.text('Science Fiction'));
    await tester.pumpAndSettle();

    expect(find.text('Dune'), findsOneWidget);
    expect(find.text('by Frank Herbert'), findsOneWidget);

    expect(find.text('Solaris'), findsOneWidget);
    expect(find.text('by Stanislaw Lem'), findsOneWidget);

    expect(find.text('Foundation'), findsOneWidget);
    expect(find.text('by Isaac Asimov'), findsOneWidget);

    expect(find.text('Do Androids Dream of Electric Sheep'), findsOneWidget);
    expect(find.text('by Philip K. Dick'), findsOneWidget);
  });
}
