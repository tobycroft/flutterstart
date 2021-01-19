import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tuuz_alert {
  All(BuildContext context, String title, String content, List<Widget> ButtonBuilder) {
    showCupertinoDialog(
        context: context,
        builder: (context) => new CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: ButtonBuilder,
            ));
  }

  Simple(BuildContext context, String title, String content, VoidCallback onPressed_yes) {
    showCupertinoDialog(
        context: context,
        builder: (context) => new CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                CupertinoButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("取消")),
                CupertinoButton(onPressed: onPressed_yes, child: Text("确定")),
              ],
            ));
  }

  Alert(BuildContext context, String title, String content) {
    showCupertinoDialog(
        context: context,
        builder: (context) => new CupertinoAlertDialog(
              title: Text(title),
              content: Text(content),
              actions: <Widget>[
                CupertinoButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("确认")),
              ],
            ));
  }

  ButtonBuilder(VoidCallback on_pressed, Text text) {
    return CupertinoButton(onPressed: on_pressed, child: text);
  }
}
