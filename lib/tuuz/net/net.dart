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
    var req = http.postUrl(uri);
    req.then((resp) => {
          if (header != null && !header.isEmpty)
            {
              header.forEach((key, value) {
                resp.headers.add(key, value);
              }),
            },
          resp.headers.contentType = ContentType.parse("application/x-www-form-urlencoded"),
          resp.writeln(query.query),
          resp.close(),
        });
    // var ret = resp.transform(utf8.decoder).join();
  }
}
