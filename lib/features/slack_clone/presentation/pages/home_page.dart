import 'package:flutter/material.dart';
import 'package:slackclone/features/slack_clone/presentation/pages/conversation_page.dart';
import 'package:slackclone/features/slack_clone/presentation/pages/channel_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PageView(
      children: [
        ChannelPage(),
        ConversationPage()
      ],
    ));
  }
}
