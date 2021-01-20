// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterstart/app/login/help/help.dart';
import 'package:flutterstart/config/app.dart';
import 'package:flutterstart/config/res.dart';
import 'package:flutterstart/tuuz/button/button.dart';
import 'package:flutterstart/tuuz/win/close.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _login();
}

class _login extends State<Login> {
  String qq;
  String password;

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
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.white,
          accentColor: Colors.amber,
        ),
        child: Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Res().Login_BG), fit: BoxFit.cover)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                ),
                Text(
                  "登录GoBotQ",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
                    ),
                    filled: true,
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    hintText: "在这里输入你的QQ号码",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: 'QQ:',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onSaved: (String value) {
                    this.qq = value;
                    print('qq=$qq');
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  cursorColor: Colors.white,
                  textCapitalization: TextCapitalization.words,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    hoverColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2.0, color: Colors.white),
                    ),
                    filled: true,
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    hintText: "输入登录码",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelText: '登录码:',
                    labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onSaved: (String value) {
                    this.qq = value;
                    print('qq=$qq');
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                FlatButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 50,
                  shape: RoundedRectangleBorder(side: BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(50))),
                  onPressed: () {},
                  child: Text('登录'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
