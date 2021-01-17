import 'package:flutter/material.dart';

class Index1 extends StatefulWidget {
  String _title;

  Index1(this._title);

  @override
  _Index1Widget createState() => _Index1Widget();
}

class _Index1Widget extends State<Index1> {
  BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Center(
            child: Text(
              "",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          margin: EdgeInsets.only(right: 48),
        ),
      ),
    );
  }
}

Widget chipDesign(String label, Color color) => Container(
    child: Chip(
      label: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: color,
      elevation: 4,
      shadowColor: Colors.grey,
      padding: EdgeInsets.all(4),
    ),
    margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2));

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );
