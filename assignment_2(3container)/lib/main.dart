import 'package:flutter/material.dart';
import 'package:assignment2/assignment2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Assignment2(),
    );
  }
}
