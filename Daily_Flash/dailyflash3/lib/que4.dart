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
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          decoration: const BoxDecoration(color: Colors.yellow, boxShadow: [
            BoxShadow(
              color: Colors.orange,
              blurRadius: 5,
              spreadRadius: 5,
              offset: Offset(0, -4),
            )
          ]),
        ),
      ),
    );
  }
}
