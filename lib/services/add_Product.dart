import 'package:store_app/helper/api.dart';
import 'package:store_app/models/Product_Mode.dart';

class AddProduct {
  Future<Productmodel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async {
    Map<String, dynamic> date =
        await Api().Post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': image,
      'category': category,
    });
    return Productmodel.fromJason(date);
  }
}
