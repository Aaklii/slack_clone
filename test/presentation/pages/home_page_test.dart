import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/presentation/pages/channel_page.dart';
import 'package:slackclone/presentation/pages/home_page.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const HomePage()),
  );
  testWidgets('HomePage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);
    expect(find.byType(ChannelPage), findsOneWidget);
  });
}
