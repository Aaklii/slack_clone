import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/features/slack_clone/presentation/pages/conversation_page.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_appbar.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_list_widget.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/input_widget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ConversationPage()),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatListWidget), findsOneWidget);
    expect(find.byType(InputWidget), findsOneWidget);
  });
}
