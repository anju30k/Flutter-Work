import 'package:assignment_42product/ProductController/wishlistController.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class WishlistDisplay extends StatefulWidget {
  const WishlistDisplay({super.key});

  @override
  State createState() => _WishlistDisplayState();
}

class _WishlistDisplayState extends State {
  @override
  Widget build(BuildContext context) {
    WishlistController providerObj = Provider.of<WishlistController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Wishlist",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Consumer(
        builder: (BuildContext context, value, Widget? child) {
          return ListView.builder(
            itemCount: Provider.of<WishlistController>(context)
                .listOfWishListProducts
                .length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 241, 241),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                      )
                    ]),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      height: 150,
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "${providerObj.listOfWishListProducts[index].img}",
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "${providerObj.listOfWishListProducts[index].productname}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "₹ ${providerObj.listOfWishListProducts[index].price}",
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    Consumer(
                      builder: (context, value, child) {
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Provider.of<WishlistController>(context,
                                        listen: false)
                                    .addDataToWishList(providerObj
                                        .listOfWishListProducts[index]);
                                providerObj.removeWishList(index: index);
                              },
                              child: Icon(
                                  providerObj.listOfWishListProducts[index]
                                          .isfavourite
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  size: 30,
                                  weight: 10,
                                  color: providerObj
                                          .listOfWishListProducts[index]
                                          .isfavourite
                                      ? Colors.red
                                      : Colors.black),
                            ),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}/*
import 'dart:developer';

import 'package:assignment_42product/ProductController/wishlistController.dart';
import 'package:assignment_42product/ProductModel/modelclass.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var wishListController = Provider.of<WishlistController>(context);
    log("${wishListController.listOfWishListProducts}");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
      ),
      body: ListView.builder(
        itemCount: wishListController.listOfWishListProducts.length,
        itemBuilder: (context, index) {
          ModelClass product = wishListController.listOfWishListProducts[index];
          return ListTile(
            title: Text("${product.productname}"),
            subtitle: Text("${product.price}"),
            trailing: IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                wishListController.removeWishList(index: index);
              },
            ),
          );
        },
      ),
    );
  }
}*/
