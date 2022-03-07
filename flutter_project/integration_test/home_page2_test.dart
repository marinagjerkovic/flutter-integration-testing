

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'pages/home_page.dart';
import 'package:flutter_project/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  HomePage homePage;

  group('Home page tests', () {
    group('Group 1', () {
      testWidgets('Test that counter increments by two when clicking plus button two times', (
          WidgetTester tester) async {
        app.main();
        homePage = HomePage(tester);

        await homePage.findOneWidgetWithValue('0');
        await homePage.clickPlusButton();
        await homePage.clickPlusButton();
        await homePage.findOneWidgetWithValue('2');
      });
    });
  });
}