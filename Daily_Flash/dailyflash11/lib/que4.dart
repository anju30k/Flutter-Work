import 'package:flutter/material.dart';

class Que4 extends StatefulWidget {
  @override
  State createState() => _Que4();
}

class _Que4 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextField(
            maxLength: 20,
            decoration: InputDecoration(
                labelText: "Enter your Name",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ),
    );
  }
}
