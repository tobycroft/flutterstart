// import 'dart:html';

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterstart/app/login/help/help.dart';
import 'package:flutterstart/config/app.dart';
import 'package:flutterstart/config/res.dart';
import 'package:flutterstart/tuuz/alert/ios.dart';
import 'package:flutterstart/tuuz/button/button.dart';
import 'package:flutterstart/tuuz/net/net.dart';
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
          // width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  "登录GoBotQ",
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                  ),
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
                onChanged: (String value) {
                  this.qq = value;
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
                onChanged: (String value) {
                  this.password = value;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Checkbox(
                    onChanged: (bool value) {
                      // setState(() => this._checkBoxVal = value);
                    },
                    value: true,
                  ),
                  Text(
                    "用户守则",
                    style: TextStyle(
                      fontSize: Config().Font_size_text,
                      color: Colors.white,
                    ),
                  ),
                ],
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
                child: Text('登录'),
                onPressed: () async {
                  Map<String, dynamic> post = {
                    "qq": this.qq,
                    "password": this.password,
                  };
                  String ret = await Net().Post(Config().Url, "/v1/index/login/login", null, post, null);
                  var json = jsonDecode(ret);
                  // print(json["code"].toString());
                  if (json["code"] == 0) {
                    Alert().Confirm(context, "登录成功", json["data"]["uid"].toString() + "欢迎回来！");
                  } else {
                    Alert().Confirm(context, "登录失败", json["echo"]);
                  }
                  print(int.parse("0"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
