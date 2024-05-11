import 'package:comp/help/builder.dart';
import 'package:comp/models/model_all_product.dart';


class Add_prod {
  Future<model_product> add_prod(
      {required String title,
      required String price,
      required String img,
      required String desc,
      required String categ}) async {
    Map<String, dynamic> data =
        await api().post(url2: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'price': price,
      'description': desc,
      'image': img,
      'category': categ
    });
    return model_product.fromjson(data);
  }
}
// // Future<dynamic>get ({required String url, @required String? token})async{
//     http.Response response=await http.get(Uri.parse(url));
//     Map<String ,dynamic> headers={};
//     if(token !=null){
//       headers.addAll({'Authorization' : 'Bearer $token'});
//       if (response.statusCode ==200){
        
//       }
    

//   }
//   }