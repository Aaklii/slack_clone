import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/presentation/pages/home_page.dart';
import 'package:slackclone/main.dart';

void main() {
  testWidgets('Main UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byType(HomePage), findsOneWidget);
  });
}
