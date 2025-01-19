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
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Colors.red, Colors.blue])),
        ),
      ),
    );
  }
}
