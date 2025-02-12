import 'package:flutter/material.dart';
import 'package:slackclone/core/styleguide/colors.dart';

class Decorations {
  static InputDecoration getInputDecoration(
      {@required String hint, @required BuildContext context}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Theme.of(context).hintColor),
      contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).hintColor, width: 0.1),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Theme.of(context).hintColor, width: 0.1),
      ),
    );
  }

  static InputDecoration getInputDecorationLight(
      {@required String hint, @required BuildContext context}) {
    return InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(color: Theme.of(context).hintColor),
      contentPadding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: KColors.primaryColor, width: 0.1),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: KColors.primaryColor, width: 0.1),
      ),
    );
  }
}
