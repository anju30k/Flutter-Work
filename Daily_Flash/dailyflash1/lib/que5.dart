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
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.blue,
            boxShadow: const [
              BoxShadow(
                color: Colors.red,
                blurRadius: 7,
                offset: Offset(0, 5),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
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
