import 'package:assignment39inheritedwidget2/firstpage.dart';
import 'package:assignment39inheritedwidget2/model.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override
  State createState()=>_MainApp();
}

class _MainApp extends State{

  @override
  Widget build(BuildContext context){
    return IPL(obj: Modelclass(), 
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    ));
  }
}

