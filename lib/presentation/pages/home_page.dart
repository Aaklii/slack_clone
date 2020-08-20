import 'package:flutter/material.dart';
import 'package:slackclone/presentation/pages/channel_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();

  const HomePage();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChannelPage(),
//      child: PageView(
//        children: [ChannelPage(), ConversationPage()],
//      ),
    );
  }
}
