import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/core/styleguide/text_styles.dart';

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ChatAppBar();

  final double height = 56;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "#random", //AppBar Title
        style: KTextStyles.appBarTextStyle,
      ),
      backgroundColor: KColors.appBarBackgroundColor,
      leading: Icon(
        Icons.arrow_back_ios,
        size: 20,
        color: KColors.appBarTextIconColor,
      ),
      titleSpacing: 0.0,
      actions: <Widget>[
        //Search Icon Button
        Icon(
          Icons.search,
          color: KColors.appBarTextIconColor,
        ),
        SizedBox(width: 16.0),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
