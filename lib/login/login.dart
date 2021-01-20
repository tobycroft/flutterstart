import 'package:flutter/material.dart';
import 'package:flutterstart/login/help/help.dart';
import 'package:flutterstart/tuuz/button/button.dart';
import 'package:flutterstart/tuuz/win/close.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _login();
}

class _login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 120,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "登录",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: Tuuz_Button().BackWithWord(context),
        actions: [
          IconButton(
              icon: Icon(
                Icons.help,
                color: Colors.white,
              ),
              color: Colors.white,
              onPressed: () {
                Window().Open(context, Help());
              })
        ],
      ),
    );
  }
}
