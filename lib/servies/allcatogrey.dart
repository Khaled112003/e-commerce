

import 'package:comp/help/builder.dart';



class allcatogreies{

  Future<List<dynamic>>getallcatogries()async{
List<dynamic>data= await api().get(url: "'https://fakestoreapi.com/products/categories'");
   
  
  return data;
}


  }
