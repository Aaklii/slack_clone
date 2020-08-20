import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_appbar.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ChatAppBar()),
  );
  testWidgets('ChatAppBar UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.text('#random'), findsOneWidget);
    expect(find.byType(IconButton), findsNWidgets(2));
  });
}
