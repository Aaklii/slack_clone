import 'package:flutter/material.dart';
import 'chat_item_card.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget();
  static final ScrollController listScrollController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: EdgeInsets.all(10.0),
      itemBuilder: (context, index) => ChatItemCard(index),
      itemCount: 20,
      reverse: true,
      controller: listScrollController,
    );
  }
}
