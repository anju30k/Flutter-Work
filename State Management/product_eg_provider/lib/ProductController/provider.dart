import 'package:assignment_42product/ProductModel/modelclass.dart';
import 'package:flutter/material.dart';

class ProductController extends ChangeNotifier {
  List<ModelClass> listOfProducts = [];

  void addData({required ModelClass mobj}) {
    listOfProducts.add(mobj);
  }

  void addToFavourite(ModelClass obj) {
    obj.isfavourite = !obj.isfavourite;
    notifyListeners();
  }

  void addCounter(int index) {
    listOfProducts[index].counter = (listOfProducts[index].counter! + 1);
    notifyListeners();
  }

  void remove(int index) {
    listOfProducts[index].counter = (listOfProducts[index].counter! - 1);
    notifyListeners();
  }
}
