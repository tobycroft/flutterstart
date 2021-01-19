import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/config/app.dart';

class Help extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _help();
}

class _help extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("帮助"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Text("       aaa",
              style: TextStyle(
                fontSize: Config().Font_Size,
              )),
          Text("bbb"),
        ],
      ),
    );
  }
}
