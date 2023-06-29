import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/Product_Mode.dart';

class getAllProduct {
  Future<List<Productmodel>> GetAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    if (response.statusCode == 200) {
      List<dynamic> date = jsonDecode(response.body);
      List<Productmodel> Produts = [];
      for (int i = 0; i < date.length; i++) {
        Produts.add(Productmodel.fromJason(date[i]));
      }
      return Produts;
    } else {
      throw Exception('error${response.statusCode}');
    }
  }
}
