import 'package:flutter/material.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_appbar.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/chat_list_widget.dart';
import 'package:slackclone/features/slack_clone/presentation/widgets/conversation_page/input_widget.dart';

class ConversationPage extends StatelessWidget {
  const ConversationPage();
  static final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: ChatAppBar(),
      body: Column(
        children: [
          //Screens
          Expanded(
            child: Container(
              color: KColors.conversationPageBackgroundColor,
              child: ChatListWidget(),
            ),
          ),

          //Input Field
          Container(child: InputWidget()),
        ],
      ),
    );
  }
}
