


import 'package:comp/models/model_all_product.dart';

import 'package:flutter/material.dart';

class customcard extends StatelessWidget {
   customcard({required this.product,
    super.key,
  });
  model_product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        Navigator.pushNamed(context, 'updatepage',arguments: product);
        
      },
      child: Stack(
        clipBehavior: Clip.none,
        
        children: [
          
          
          
          Container(
            decoration: BoxDecoration(
                
                boxShadow: [
                  BoxShadow(
                      blurRadius: 0.2,
                      color: Colors.grey.withOpacity(0.1),
                      offset:const Offset(1, 5)),
                ]),
            
            child:  Card(
              elevation: 6,
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      product.title.substring(0,15),
                      style:const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                   const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price.toString()}',
                            style:
                               const TextStyle(color: Colors.black, fontSize: 20)),
                       const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      ],
                    )
                  ]),
            ),
          ),
          
        Positioned(bottom:70 ,left: 40,
           child: Image.network(product.image,width: 150,height: 80,))
        ],
    
      ),
    );
  }
}
