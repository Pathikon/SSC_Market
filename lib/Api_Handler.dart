import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';

class ApiHandler {
  String base_url = "http://10.0.10.24:5000";

  var log = Logger();

  Future<http.Response> get(String url) async {
    url = formater(url);
    var response = await http.get(Uri.parse(url),headers: {
      "Content-Type": "application/json",
      "Accept": "application/json"
    });

    log.i(response.body);
    log.i(response.statusCode);
    return response;
  }

  Future<http.Response> post(String url, Map<String, String> body) async {
    url = formater(url);
    var response = await http.post(Uri.parse(url),
        headers: {"Content-type": "application/json"}, body: json.encode(body));
    return response;
  }

  String formater(String url) {
    return base_url + url;
  }
}
