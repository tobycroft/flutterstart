import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tuuz {
  Alert(BuildContext context, String title, String content, VoidCallback onPressed_yes) {
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
              ],
            ));
  }
}
