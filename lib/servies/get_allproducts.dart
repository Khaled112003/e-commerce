import 'package:comp/help/builder.dart';
import 'package:comp/models/model_all_product.dart';


class allprouducts {
  Future<List<model_product>> getallproduct() async {
    List<dynamic> data =
        await api().get(url: 'https://fakestoreapi.com/products');

    List<model_product> listproduct = [];
    for (int i = 0; i < data.length; i++) {
      listproduct.add(model_product.fromjson(data[i]));
    }
    return listproduct;
  }
}
