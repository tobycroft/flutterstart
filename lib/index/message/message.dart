import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessagePage extends StatefulWidget {
  const MessagePage(Key key) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MessagePage();
}

class _MessagePage extends State<MessagePage> {
  // var msg = [
  //   {"key": "value"},
  //   {"key": "value"},
  //   {"key": "value"},
  //   {"key": "value"},
  // ];
  //
  // var msg2 = [
  //   Text("data"),
  //   Text("data"),
  //   Text("data"),
  //   Text("data"),
  //   Text("data"),
  //   Text("data"),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Slidable Demo'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          return Slidable(
            key: ValueKey(index),
            actionPane: SlidableDrawerActionPane(),
            actions: <Widget>[
              IconSlideAction(
                caption: 'Archive',
                color: Colors.blue,
                icon: Icons.archive,
              ),
              IconSlideAction(
                caption: 'Share',
                color: Colors.indigo,
                icon: Icons.share,
              ),
            ],
            secondaryActions: <Widget>[
              IconSlideAction(
                caption: 'More',
                color: Colors.grey.shade200,
                icon: Icons.more_horiz,
              ),
              IconSlideAction(
                caption: 'Delete',
                color: Colors.red,
                icon: Icons.delete,
              ),
            ],
            dismissal: SlidableDismissal(
              child: SlidableDrawerDismissal(),
            ),
            child: ListTile(
              title: Text('$index'),
            ),
          );
        },
      ),
    );
  }
}
