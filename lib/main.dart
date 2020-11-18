import 'package:flutter/material.dart';

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
      home: BottomTab(Key("asd")),
    );
  }
}

class BottomTab extends StatefulWidget {
  const BottomTab(Key key) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomTab();
}

class _BottomTab extends State<BottomTab> with SingleTickerProviderStateMixin {
  TabController _tabController;

  static const tabpage = <Widget>[
    Center(child: Icon(Icons.message, size: 64, color: Colors.blue)),
    Center(child: Icon(Icons.contacts, size: 64, color: Colors.green)),
    Center(child: Icon(Icons.supervised_user_circle, size: 64, color: Colors.green)),
    Center(child: Icon(Icons.settings, size: 64, color: Colors.green)),
  ];

  static const tab = <Tab>[
    Tab(icon: Icon(Icons.message), text: "Message"),
    Tab(icon: Icon(Icons.contacts), text: "Contacts"),
    Tab(icon: Icon(Icons.supervised_user_circle), text: "Circle"),
    Tab(icon: Icon(Icons.settings), text: "Me"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tab.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: TabBarView(
        children: tabpage,
        controller: _tabController,

      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: tab,
          controller: this._tabController,
        ),
      ),
    );
  }
}
