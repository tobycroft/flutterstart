import 'package:flutter/material.dart';
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
        leadingWidth: 100,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "登录",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: FlatButton(
          padding: EdgeInsets.only(right: 40, top: 5),
          child: Text(
            "<返回",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () {
            Tuuz_win().Close(context);
          },
        ),
      ),
    );
  }
}
