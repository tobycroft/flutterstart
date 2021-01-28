import 'package:flutter/material.dart';
import 'package:flutterstart/config/config.dart';

class Robot_info_index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _robot_info_index();
}

var robot_info = {};



class _robot_info_index extends State<Robot_info_index> {
  @override
  void initState() {


    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("机器人设定"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: ClipOval(
              //圆形头像
              child: Image.network(
                'https://pic2.zhimg.com/v2-639b49f2f6578eabddc458b84eb3c6a1.jpg',
                width: 80.0,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10.0),
            child: Text('个人',style: TextStyle(color:Colors.white,fontSize: Config().Font_Size)),
          ),
        ],
      ),
    );
  }
}
