import 'package:flutter_test/flutter_test.dart';

class HomePage {
  final WidgetTester tester;

  const HomePage(this.tester);

  Future<void> findOneWidgetWithValue(String value) async {
    await tester.pumpAndSettle();
    expect(find.text(value), findsOneWidget);
  }

  Future<void> clickPlusButton() async {
    await tester.tap(find.byTooltip('Increment'));
  }
}