import 'package:comp/help/builder.dart';
import 'package:comp/models/model_all_product.dart';

class update_prod{
  Future<model_product> updata_addprod ({required String title,
      required dynamic price,
      required String img,
      required String desc,
      required String categ})async{
    Map<String,dynamic> data=await api().put (url2: "https://fakestoreapi.com/products/:id", body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': img,
      'category': categ
    });
    return model_product.fromjson(data);
  }
}