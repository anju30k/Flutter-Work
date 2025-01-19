import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              color: Colors.yellow,
              //borderRadius: BorderRadius.circular(5),
              border: Border(
                  left: BorderSide(
                color: Colors.green,
                width: 5,
              ))),
          child: const Text(
            "Hello World",
            style: TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}
