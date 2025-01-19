import 'package:dailyflash8/que1.dart';
import 'package:flutter/material.dart';
import 'package:dailyflash8/que2.dart';
import 'package:dailyflash8/que3.dart';
import 'package:dailyflash8/que4.dart';
import 'package:dailyflash8/que5.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home:Que1(),
      //home:Que2(),
      //home: Que3(),
      //home: Que4(),
      home: Que5(),
    );
  }
}
