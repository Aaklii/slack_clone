import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_item_card.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_list_widget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body:  const ChatListWidget()),
  );

  testWidgets('ConversationPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(ChatItemCard), findsWidgets);
  });
}
