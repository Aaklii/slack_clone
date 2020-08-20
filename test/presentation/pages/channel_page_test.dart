import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:slackclone/features/slack_clone/presentation/pages/channel_page.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/channel_page/channel_item_widget.dart';

void main() {
  const MaterialApp app = MaterialApp(
    home: Scaffold(body: const ChannelPage()),
  );

  testWidgets('ChannelPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app);

    expect(find.byType(SlackCloneHeading), findsOneWidget);
    expect(find.byType(ChannelSearchTextField), findsOneWidget);
    expect(find.byType(ChannelTitleAndAddNewChannel), findsOneWidget);
    expect(find.byType(ChannelItemWidget), findsWidgets);
    expect(find.byType(ListView), findsNWidgets(3));
  });
}
