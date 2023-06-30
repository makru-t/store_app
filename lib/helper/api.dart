import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> Get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url)); //redponse of api
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('erro ${response.statusCode}');
    }
  }

  Future<dynamic> Post({required String url, required dynamic body}) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> date = jsonDecode(response.body);
      return date;
    } else {
      throw Exception('eroor ${response.statusCode}');
    }
  }
  Future<dynamic> Put({required String url, required dynamic body}) async {
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
    );
    if (response.statusCode == 200) {
      Map<String, dynamic> date = jsonDecode(response.body);
      return date;
    } else {
      throw Exception('eroor ${response.statusCode}');
    }
  }
}
