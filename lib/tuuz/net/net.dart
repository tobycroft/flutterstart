import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutterstart/config/app.dart';

class Net {
  Post(String url, path, Map<String, String> get, Map<String, dynamic> post, Map<String, String> header) async {
    var http = new HttpClient();
    http.findProxy = (url) {
      return HttpClient.findProxyFromEnvironment(url, environment: {"http_proxy": Config().ProxyURL});
    };
    var uri;
    if (get == null || get.isEmpty) {
      uri = new Uri.http(url, path);
    } else {
      uri = new Uri.http(url, path, get);
    }
    var query = new Uri(queryParameters: post);
    var req = await http.postUrl(uri);
    if (header != null && !header.isEmpty) {
      header.forEach((key, value) {
        req.headers.add(key, value);
      });
    }
    req.headers.contentType = ContentType.parse("application/x-www-form-urlencoded");
    req.write(query.query);
    var resp = await req.close();
    var ret = await resp.transform(utf8.decoder).join();
    return ret;
  }

  PostRaw(String url, path, Map<String, String> get, dynamic post, Map<String, String> header) async {
    var http = new HttpClient();
    http.findProxy = (url) {
      return HttpClient.findProxyFromEnvironment(url, environment: {"http_proxy": Config().ProxyURL});
    };
    var uri;
    if (get == null || get.isEmpty) {
      uri = new Uri.http(url, path);
    } else {
      uri = new Uri.http(url, path, get);
    }
    var req = await http.postUrl(uri);
    if (header != null && !header.isEmpty) {
      header.forEach((key, value) {
        req.headers.add(key, value);
      });
    }
    req.headers.contentType = ContentType.text;
    req.write(post);
    var resp = await req.close();
    var ret = await resp.transform(utf8.decoder).join();
    return ret;
  }

  PostJson(String url, path, Map<String, String> get, Map<String, dynamic> post, Map<String, String> header) async {
    var http = new HttpClient();
    http.findProxy = (url) {
      return HttpClient.findProxyFromEnvironment(url, environment: {"http_proxy": Config().ProxyURL});
    };
    var uri;
    if (get == null || get.isEmpty) {
      uri = new Uri.http(url, path);
    } else {
      uri = new Uri.http(url, path, get);
    }
    var req = await http.postUrl(uri);
    if (header != null && !header.isEmpty) {
      header.forEach((key, value) {
        req.headers.add(key, value);
      });
    }
    req.headers.contentType = ContentType.text;
    req.writeln(post);
    var resp = await req.close();
    var ret = await resp.transform(utf8.decoder).join();
    return ret;
  }
}
