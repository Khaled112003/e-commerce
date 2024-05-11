import 'package:comp/models/model_all_product.dart';
import 'package:comp/update/update_prod.dart';
import 'package:comp/widgets/customtextbutton.dart';
import 'package:comp/widgets/customtextfild.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class updatepage extends StatefulWidget {
  updatepage({
    super.key,
  });

  @override
  State<updatepage> createState() => _updatepageState();
}

class _updatepageState extends State<updatepage> {
  String? name;

  String? desc;

  String? price;

  String? imge;
  bool isloading=false;

  @override
  Widget build(BuildContext context) {
    model_product product =
        ModalRoute.of(context)!.settings.arguments as model_product;
    return ModalProgressHUD(inAsyncCall:isloading ,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "update product",
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            customtextfield(
              onChanged: (data) {
                name = data;
              },
              Txt: 'product name',
            ),
            const SizedBox(
              height: 10,
            ),
            customtextfield(
              onChanged: (data) {
                desc = data;
              },
              Txt: 'desc',
            ),
            const SizedBox(
              height: 10,
            ),
            customtextfield(
              onChanged: (data) {
                price = (data);
              },
              
              Txt: 'price',
            ),
            const SizedBox(
              height: 10,
            ),
            customtextfield(
              onChanged: (data) {
                imge = data;
              },
              Txt: 'image',
            ),
            const SizedBox(
              height: 30,
            ),
            custombuttonfield(
              text: 'update',
              onTap: () {
                isloading=true;
                  setState(() {
                    
                  });
                try {
                  ;
  func_update(product);
} on Exception catch (e) {
  print(e);


}
isloading=false;
setState(() {
  
});

              },
            )
          ]),
        ),
      ),
    );
  }

  void func_update(model_product product) {
    update_prod().updata_addprod(
        title: name!,
        price: price!,
        img: imge!,
        desc: desc!,
        categ: product.catogrey);
  }
}
