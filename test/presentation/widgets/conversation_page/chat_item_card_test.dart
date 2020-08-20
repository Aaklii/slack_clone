import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/presentation/widgets/conversation_page/chat_item_card.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ChatItemCard(0)),
  );
  testWidgets('ChatItemCard UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

//    expect(find.byType(Stack), findsNWidgets(1));
    expect(find.byType(ImageIcon), findsNWidgets(1));
    expect(find.byType(Text), findsNWidgets(2));
  });
}
