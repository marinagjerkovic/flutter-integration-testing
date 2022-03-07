import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'pages/home_page.dart';
import 'package:flutter_project/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  HomePage homePage;

  testWidgets('Test that counter increments when clicking plus button', (
      WidgetTester tester) async {
    app.main();

    // implementation without pages
    // await tester.pumpAndSettle();
    // expect(find.text('0'), findsOneWidget);
    // await tester.tap(find.byTooltip('Increment'));
    // await tester.pumpAndSettle();
    // expect(find.text('1'), findsOneWidget);

    // implementation using pages
    homePage = HomePage(tester);

    await homePage.findOneWidgetWithValue('0');
    await homePage.clickPlusButton();
    await homePage.findOneWidgetWithValue('1');
  });
}