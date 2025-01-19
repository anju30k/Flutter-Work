import 'package:flutter/material.dart';
import 'package:appbar_container/assignment1.dart';
//import 'package:appbar_container/assignment2.dart';
//import 'package:appbar_container/assignment3.dart';
//import 'package:appbar_container/assignment4.dart';
//import 'package:appbar_container/assignment5.dart';
//import 'package:appbar_container/assignment6.dart';
//import 'package:appbar_container/assignment7.dart';
//import 'package:appbar_container/assignment8.dart';
//import 'package:appbar_container/assignment9.dart';
// import 'package:appbar_container/assignment10.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Assignment1(),
      //home: Assignment2(),
      //home: Assignment3(),
      //home: Assignment4(),
      //home: Assignment5(),
      //home: Assignment6(),
      //home: Assignment7(),
      //home: Assignment8(),
      //home: Assignment9(),
      // home:Assignment10(),
    );
  }
}
