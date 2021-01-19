import 'package:flutter/material.dart';
import 'package:flutterstart/tuuz/win/close.dart';

class Closebutton {
  @override
  CloseX() {
    return Closebutton();
  }

  BackButton() {
    return BackButton();
  }

  BackWithWord(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.only(right: 40),
      child: Text(
        "<返回",
        style: TextStyle(color: Colors.white, fontSize: 19),
      ),
      onPressed: () {
        Tuuz_win().Close(context);
      },
    );
  }
}
