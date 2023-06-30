import 'dart:convert';
import 'package:http/http.dart';
import 'package:store_app/helper/api.dart';

class Get_Category {
  Future<List<dynamic>> getCat() async {
    List<dynamic> date =
        await Api().Get(url: 'https://fakestoreapi.com/products/categories');

     return date;
  }
}
