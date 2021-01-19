import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterstart/index/help/help.dart';
import 'package:flutterstart/login/login.dart';
import 'package:flutterstart/tuuz/alert/ios.dart';
import 'package:flutterstart/tuuz/popup/popupmenu.dart';
import 'package:flutterstart/tuuz/win/close.dart';

class Index1 extends StatefulWidget {
  String _title;

  Index1(this._title);

  @override
  _Index1 createState() => _Index1(this._title);
}

class _Index1 extends State<Index1> {
  String _title;

  _Index1(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this._title),
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton(
            icon: Icon(Icons.menu),
            offset: Offset(100, 100),
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              Tuuz_Popup().MenuItem(Icons.message, "登录", "login"),
              Tuuz_Popup().MenuItem(Icons.help_center, "首页帮助", "index_help"),
              Tuuz_Popup().MenuItem(Icons.qr_code, "扫码", "C"),
              Tuuz_Popup().MenuItem(Icons.zoom_out, "cccccccc", "D"),
            ],
            onSelected: (String value) {
              print(value);
              switch (value) {
                case "login":
                  {
                    Tuuz_win().Open(context, Login());
                    break;
                  }
                case "index_help":
                  {
                    Tuuz_win().Open(context, Index_Help());
                    break;
                  }

                case "C":
                  {
                    Tuuz_alert().Simple(context, "CC", "内容", () {});
                    break;
                  }

                default:
                  {
                    Tuuz_alert().Simple(context, "SS", "内容", () {});
                    break;
                  }
              }
            },
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
          itemCount: data.length,
        ),
      ),
    );
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// Data to display.
const List<Entry> data = <Entry>[
  Entry(
    'Chapter A',
    <Entry>[
      Entry(
        'Section A0',
        <Entry>[
          Entry('Item A0.1'),
          Entry('Item A0.2'),
        ],
      ),
      Entry('Section A1'),
      Entry('Section A2'),
    ],
  ),
  Entry(
    'Chapter B',
    <Entry>[
      Entry('Section B0'),
      Entry('Section B1'),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
