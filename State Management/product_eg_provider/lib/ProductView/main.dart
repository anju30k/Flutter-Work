import 'package:assignment_42product/ProductController/provider.dart';
import 'package:assignment_42product/ProductController/wishlistController.dart';
import 'package:assignment_42product/ProductView/productdetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          return ProductController();
        }),
        ChangeNotifierProvider(create: (context) {
          return WishlistController();
        }),
      ],
      child: MaterialApp(
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const ProductDetails(),
      ),
    );
  }
}
