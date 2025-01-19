import 'package:assignment_42product/ProductController/provider.dart';
import 'package:assignment_42product/ProductController/wishlistController.dart';
import 'package:assignment_42product/ProductView/wishlistscreen.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State createState() => _DisplayPage();
}

class _DisplayPage extends State {
  @override
  Widget build(BuildContext context) {
    var showobj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WishlistDisplay(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                ))
          ],
          title: const Text("Product List Screen"),
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
          itemCount: showobj.listOfProducts.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    "${showobj.listOfProducts[index].img}",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Product Name: ${showobj.listOfProducts[index].productname}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Product Price: Rs. ${showobj.listOfProducts[index].price}",
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Consumer<WishlistController>(
                          builder: (context, value, child) {
                        return GestureDetector(
                            onTap: () {
                              /// ADD PRODUCT TO WISHLIST
                              showobj.addToFavourite(
                                  showobj.listOfProducts[index]);

                              Provider.of<WishlistController>(context,
                                      listen: false)
                                  .addDataToWishList(
                                      showobj.listOfProducts[index]);
                            },
                            child: Icon(
                                (showobj.listOfProducts[index].isfavourite)
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_outline_rounded,
                                size: 30,
                                weight: 10,
                                color: showobj.listOfProducts[index].isfavourite
                                    ? Colors.red
                                    : Colors.black));
                      }),
                      const SizedBox(
                        width: 100,
                        height: 20,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showobj.addCounter(index);
                            },
                            child: const Icon(Icons.add),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                      Consumer<ProductController>(
                          builder: (context, value, child) {
                        return Text("${showobj.listOfProducts[index].counter}");
                      }),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          showobj.remove(index);
                        },
                        child: const Icon(Icons.remove),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ));
  }
}
