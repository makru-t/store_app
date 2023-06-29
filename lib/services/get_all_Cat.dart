import 'dart:convert';
import 'package:http/http.dart' ;

class Get_Category {
  Future<List<dynamic>> getCat() async {
   Response response = await 
        get(Uri.parse('https://fakestoreapi.com/products/categories'));
    if (response.statusCode == 200) {
      List<dynamic> date = jsonDecode(response.body);
      return date;
    } else {
      throw Exception('error${response.statusCode}');
    }
  }
}
 