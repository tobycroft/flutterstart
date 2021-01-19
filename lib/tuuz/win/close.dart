import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tuuz_win {
  Close(BuildContext context) {
    return Navigator.pop(context);
  }

  Open(BuildContext context, StatefulWidget any) {
    return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexts) => any));
  }

  Open_static(BuildContext context, StatelessWidget any) {
    return Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext contexts) => any));
  }
}
