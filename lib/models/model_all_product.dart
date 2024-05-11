





class model_product {
   final dynamic id;
  final String title;
  final num price;
  final String desc;
 
  
  final String catogrey;
  final String image;
  final ratingmodel obj_rate;

  model_product( 
      {
        required this.id,
        required this.title
        ,required this.price,
      required this.desc,
      
      
      required this.catogrey,
      required this.image,
      required this.obj_rate
      });

      
      factory model_product.fromjson(jsondata){
        return model_product(id: jsondata['id'],
          title: jsondata['title'],
          price: jsondata['price'],
         desc: jsondata['description'], 
         
          
           catogrey: jsondata['category'],
            image: jsondata['image'],
            obj_rate: ratingmodel.fromjson(jsondata['rating']));
      }
      
}
class ratingmodel{
  final num rate;
  final num count;

  ratingmodel({required this.rate, required this.count});


   factory ratingmodel.fromjson(jsondata){
        return ratingmodel(rate: jsondata['rate'],
         count: jsondata['count']) ;
        }

}
 
