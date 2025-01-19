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
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.amber,
                hintText: "Enter your Name",
                contentPadding: const EdgeInsets.only(
                  left: 70,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ),
    );
  }
}
