import 'package:flutter/material.dart';

class Que1 extends StatefulWidget {
  @override
  State createState() => _Que1();
}

class _Que1 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            elevation: 10,
            shadowColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: const Text("Button"),
      )),
    );
  }
}
