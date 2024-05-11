
import 'package:comp/servies/get_allproducts.dart';
import 'package:comp/models/model_all_product.dart';
import 'package:comp/widgets/customcard.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            "store",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.card_giftcard,
                  color: Colors.black,
                ))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: FutureBuilder<List<model_product>>(
              future: allprouducts().getallproduct(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<model_product> products = snapshot.data!;
                  return GridView.builder(
                    clipBehavior: Clip.none,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 40,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return customcard(
                        product: products[index],
                      );
                    },
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            )));
  }
}
