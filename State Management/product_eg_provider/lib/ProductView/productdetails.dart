import 'package:assignment_42product/ProductController/provider.dart';
import 'package:assignment_42product/ProductModel/modelclass.dart';
import 'package:assignment_42product/ProductView/productdisplay.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State createState() => _ProductDetails();
}

class _ProductDetails extends State {
  TextEditingController imgController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Product Details ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    labelText: "Product Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: imgController,
                decoration: InputDecoration(
                    labelText: "Product Url",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              height: 100,
              width: 500,
              padding: const EdgeInsets.all(8),
              child: TextFormField(
                controller: priceController,
                decoration: InputDecoration(
                    labelText: "Product Price",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (imgController.text.trim().isNotEmpty &&
                      nameController.text.trim().isNotEmpty &&
                      priceController.text.trim().isNotEmpty) {
                    var modelobj = ModelClass(
                      isfavourite: false,
                      counter: 0,
                      productname: nameController.text,
                      price: priceController.text,
                      img: imgController.text,
                    );

                    Provider.of<ProductController>(context, listen: false)
                        .addData(mobj: modelobj);
                    priceController.clear();
                    nameController.clear();
                    imgController.clear();
                  }
                },
                child: const Text("Add")),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DisplayPage(),
                    ),
                  );
                },
                child: const Text("Submit")),
          ],
        ),
      ),
    );
  }
}
