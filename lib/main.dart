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
    Center(child: Icon(Icons.cloud, size: 64, color: Colors.green)),
    Center(child: Icon(Icons.alarm, size: 64, color: Colors.green)),
    Center(child: Icon(Icons.forum, size: 64, color: Colors.green)),
  ];

  static const tab = <Tab>[
    Tab(icon: Icon(Icons.cloud), text: "tab1"),
    Tab(icon: Icon(Icons.alarm), text: "tab1"),
    Tab(icon: Icon(Icons.forum), text: "tab1"),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
