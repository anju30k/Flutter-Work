import 'package:flutter/material.dart';
import 'package:assignment_32/homepage.dart';
import 'package:assignment_32/homepage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: MyHomePage(),
      home: MyHomePage2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
