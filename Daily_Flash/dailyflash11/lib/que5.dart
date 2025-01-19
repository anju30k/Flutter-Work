import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State {
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
            maxLines: 5,
            cursorColor: Colors.red,
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
