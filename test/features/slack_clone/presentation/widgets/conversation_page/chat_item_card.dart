import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/core/styleguide/text_styles.dart';

class ChatItemCard extends StatelessWidget {
  final int index;

  const ChatItemCard(this.index);

  @override
  Widget build(BuildContext context) {

    //Random number generator
    var rand = new Random();


    // TODO: implement build
    // This is a received message

    return Container(
      margin: EdgeInsets.only(
        bottom: 4.0,
        right: 0,
        left: 0,
      ),
      child: Material(
        elevation: 1,
        color: KColors.postCardColor,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 24,
              ),
              child: InkWell(
                child: ImageIcon(
                  AssetImage("assets/icon_profile.png"),
//                  color: Colors.white,
                  color: kcListPostProfileIconColors[
                      rand.nextInt(kcListPostProfileIconColors.length)],
                ),
                onTap: () {},
              ),
            ),
            getOnlyText(),
            Positioned(
              bottom: 4,
              right: 24,
              child: Text(
                DateFormat('dd MMM kk:mm')
                    .format(DateTime.fromMillisecondsSinceEpoch(1565888474278)),
                style: KTextStyles.postTimeStampTextStyle,
              ),
            ),
          ],
        ),
      ),
    );

//      return Container(
//        child: Column(
//          children: <Widget>[
//            Row(
//              children: <Widget>[
//                Container(
//                  child: Text(
//                    'This is a received message',
//                    style: TextStyle(color: Colors.black),
//                  ),
//                  padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
//                  width: 200.0,
//                  decoration: BoxDecoration(
//                      color: Colors.blueAccent,
//                      borderRadius: BorderRadius.circular(8.0)),
//                  margin: EdgeInsets.only(left: 10.0),
//                )
//              ],
//            ),
//            Container(
//              child: Text(
//                style: KTextStyles.postTextStyle,
//              ),
//              margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
//            )
//          ],
//          crossAxisAlignment: CrossAxisAlignment.start,
//        ),
//        margin: EdgeInsets.only(bottom: 10.0),
//      );
  }
}

Container getOnlyText() {
  return Container(
    padding: EdgeInsets.only(
      top: 16.0,
      bottom: 20.0,
      right: 20.0,
      left: 44.0,
    ),
    child: Text(
      "Some content is here which is fakeSome content is here which is fak"
      "eSome content is here which is fakeSome content is here which is fake",
      style: KTextStyles.postTextStyle,
    ),
  );
}
