import 'package:flutter/material.dart';
import 'package:slackclone/core/styleguide/colors.dart';
import 'package:slackclone/core/styleguide/text_styles.dart';

class InputWidget extends StatelessWidget {
  final TextEditingController textEditingController =
      new TextEditingController();

  InputWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,

      child: Material(
        color: KColors.postTextFieldContainerColor,
        elevation: 10,
        child: Container(
          constraints: BoxConstraints(
            maxHeight: 100,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[


              IconButton(
                icon: Icon(
                  Icons.face,
                  color: KColors.postTextFieldIconColor,
                ),
                onPressed: (){},
              ),

              Flexible(
                child: TextField(
                  style: KTextStyles.postTextFieldTextStyle,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    hintText: 'Share Something..',
                    hintStyle: TextStyle(color: KColors.kcTextFieldHintTextColor),
                  ),
                  maxLines: null,
                ),
              ),

              IconButton(
                icon: Icon(
                  Icons.mic,
                  color: KColors.postTextFieldIconColor,
                ),
                onPressed: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
