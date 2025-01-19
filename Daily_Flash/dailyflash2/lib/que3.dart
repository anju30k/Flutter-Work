import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  @override
  State createState() => _Que3();
}

class _Que3 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color:const  Color.fromARGB(255, 216, 156, 233),
            borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
            border: Border.all(
              width: 2,
              color:const  Color.fromARGB(255, 74, 4, 94),
            ),
          ),
        ),
      ),
    );
  }
}
