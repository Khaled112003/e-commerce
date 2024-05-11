

import 'package:comp/help/builder.dart';


import '../models/model_all_product.dart';


class catogreyservies {
  Future<List<model_product>> getcatogreyservies(
      {required String category_name}) async {
   List<dynamic> data =await api().get(url: "https://fakestoreapi.com/products/category/$category_name");
    
   
  List<model_product> listproduct = [];
  for (int i = 0; i <= data.length; i++) {
    listproduct.add(model_product.fromjson(data[i]));
  }
  return listproduct;

  }
}
