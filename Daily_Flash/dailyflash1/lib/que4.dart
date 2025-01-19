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
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.red,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
