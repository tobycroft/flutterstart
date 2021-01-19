import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: Text(""),
    );
  }
}
