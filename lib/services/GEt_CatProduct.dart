import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/models/Product_Mode.dart';

class CatogryServives {
  getcatproducts({required category_name}) async {
    http.Response response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/category/$category_name'));

    if (response.statusCode == 200) {
      List<dynamic> date = jsonDecode(response.body);
      List<Productmodel> Products = [];
      for (int i = 0; i < date.length; i++) {
        Products.add(Productmodel.fromJason(date[i]));
      }
      return Products;
    } else {
      throw Exception('error${response.statusCode}');
    }
  }
}
