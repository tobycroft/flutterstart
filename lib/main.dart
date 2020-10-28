import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MessageList(title: 'Flutter Demo Home Page'),
    );
  }
}

var message = [];

class MessageList extends StatefulWidget {
  final String title;

  MessageList({this.title});

  @override
  State<StatefulWidget> createState() => _MessageList();
}

class _MessageList extends State<MessageList> {
  Future loadMessageList() async {
    var content = await rootBundle.loadString("data/message.json");
    var collection = json.decode(content);

    setState(() {
      message = collection;
    });
    print(message);
  }

  void initState() {
    loadMessageList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: message.length,
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(message[index]['subject']),
            isThreeLine: false,
            leading: CircleAvatar(
              child: Text(index.toString()),
            ),
            subtitle: Text(message[index]["body"]),
          );
        },
      ),
    );
  }
}
