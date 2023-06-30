import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/Product_Mode.dart';

class CatogryServives {
  getcatproducts({required category_name}) async {
    List<dynamic> date = await Api()
        .Get(url: 'https://fakestoreapi.com/products/category/$category_name');
       List<Productmodel> Products = [];
      for (int i = 0; i < date.length; i++) {
        Products.add(Productmodel.fromJason(date[i]));
      }
      return Products;
    
  }
}
