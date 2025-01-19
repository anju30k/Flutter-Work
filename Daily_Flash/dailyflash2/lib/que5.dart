import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State<Que5> {
  Color containerColor = Colors.red;
  String text = "Click Me!";

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
          height: 300,
          width: 300,
          color: containerColor,
          child: Center(
            child: GestureDetector(
              child: Text(
                text,
                style: const TextStyle(fontSize: 20),
              ),
              onTap: () {
                setState(() {
                  containerColor =
                      containerColor == Colors.red ? Colors.blue : Colors.red;
                  text = containerColor == Colors.red
                      ? "Click Me!"
                      : "Tapped Container!";
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
