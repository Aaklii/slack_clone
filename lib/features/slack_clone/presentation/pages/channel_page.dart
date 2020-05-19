import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slackclone/core/config/Assets.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/core/styleguide/text_styles.dart';
import '../widgets/channel_page/channel_item_widget.dart';
import 'data.dart';

class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: KColors.channelPageBackgroundColor,
        body: ListView(
          children: <Widget>[
            ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: [
                SlackCloneHeading(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ChannelSearchTextField(),
            ChannelTitleAndAddNewChannel(),
            ListView.builder(
//                Nesting ListView inside another ListView will
//                need us to add these properties to the children for the
//                scroll to work properly.
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: channels.length,
              itemBuilder: (context, index) {
                String channelName = channels[index];
                return ChannelItemWidget(channelName: channelName);
              },
            ),

            //Size Box to provide empty space at the end of channel list
            SizedBox(
              height: 160,
            ),
          ],
        ),
      ),
    );
  }
}

//***********Slack Clone Heading***********//

class SlackCloneHeading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Assets.slackclone_icon,
            height: 32,
            width: 32,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            "Slack Clone",
            style: KTextStyles.channelsTitleTextStyle,
          ),
        ],
      ),
    );
  }
}


//***********Channel Title And Add New Channel***********//
class ChannelTitleAndAddNewChannel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
            left: 30.0,
            right: 30.0,
          ),
          height: 40,
          child: Text(
            "Channels",
            style: KTextStyles.channelAddButtonTextStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: IconButton(
            splashColor: KColors.channelItemSplashColor,
            highlightColor: KColors.channelItemHighlightColor,
            icon: Icon(
              Icons.add,
              size: 20,
              color: KColors.appBarTextIconColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}


//***********Channel Search TextField***********//
class ChannelSearchTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10,bottom: 10, right: 20, left: 20),
      child: TextField(
        style: TextStyle(
          color: KColors.channelSearchTextFieldTextColor,
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          hintText: "#channel",
          hintStyle: KTextStyles.channelSearchTextFieldTextStyle,
          fillColor: KColors.channelSearchTextFieldContainerColor,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: KColors.channelSearchTextFieldTextColor,
              width: 2.0,
            ),
          ),
          focusColor: KColors.channelSearchTextFieldTextColor,
          contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: KColors.channelSearchTextFieldSearchIconColor,
            ),
          ),
        ),
      ),
    );
  }
}

