import 'package:assignment_42product/ProductModel/modelclass.dart';
import 'package:flutter/material.dart';

class WishlistController with ChangeNotifier {
  List<ModelClass> listOfWishListProducts = [];

  void addDataToWishList(ModelClass obj) {
    if (obj.isfavourite == true) {
      listOfWishListProducts.add(obj);
    } else {
      listOfWishListProducts.remove(obj);
    }
  }

  void removeWishList({required int index}) {
    listOfWishListProducts.removeAt(index);
    notifyListeners();
  }
}
