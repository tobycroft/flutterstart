import 'package:flutter/cupertino.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 16, bottom: 16),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "text",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12, right: 12, top: 8),
                        child: Text(
                          "testsdsdsdsd",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    chipDesign("label", Colors.green, context)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget chipDesign(String label, Color color, BuildContext context) => Container(
    child: InkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => CupertinoAlertDialog(
            title: Text("title"),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("yes"),
                onPressed: () {},
              ),
              CupertinoDialogAction(
                child: Text("no"),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
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
    ),
    margin: EdgeInsets.only(left: 12, right: 12, top: 2, bottom: 2));

Container divider(BuildContext context) => Container(
      child: Divider(),
      margin: EdgeInsets.only(left: 10, right: 10, top: 28, bottom: 28),
    );
