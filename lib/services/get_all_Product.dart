 
 import 'package:store_app/helper/api.dart';
import 'package:store_app/models/Product_Mode.dart';

class getAllProduct {
  Future<List<Productmodel>> GetAllProducts() async {
    List<dynamic> date = await Api().Get(url: 'https://fakestoreapi.com/products');
     List<Productmodel> Produts = [];
    for (int i = 0; i < date.length; i++) {
      Produts.add(Productmodel.fromJason(date[i]));
    }
    return Produts;
  }
}
