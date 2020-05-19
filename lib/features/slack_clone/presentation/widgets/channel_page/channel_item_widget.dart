import 'package:flutter/material.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/core/styleguide/text_styles.dart';
import 'package:slackclone/features/slack_clone/presentation/pages/conversation_page.dart';

class ChannelItemWidget extends StatelessWidget {

  final String channelName;

  const ChannelItemWidget({Key key, this.channelName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: KColors.channelItemSplashColor,
      highlightColor: KColors.channelItemHighlightColor,

      onTap: (){

        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (BuildContext context){
              return ConversationPage();
            },
          ),
        );

      },
      child: Container(
          padding: EdgeInsets.fromLTRB(15, 8, 0, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Container(
                child: Text(
//                  '#channel_name',
                  channelName,
                  style: KTextStyles.defaultChannelItemTextStyle,
                ),
              ),
            ],
          )),
    );
  }
}
