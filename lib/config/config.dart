import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Config {
  double Font_Size = 24;
  double Font_size_text = 16;

  TextStyle Text_Style_default = TextStyle(
    fontSize: 16,
  );

  TextStyle Text_style_notimportant_auto = TextStyle(
    // fontSize: 16,
    color: Colors.black12,
  );

  bool Proxy_debug = true;

  String ProxyURL = "http://192.168.1.10:9000";

  String Url = "api.tuuz.cn:15088";
}
