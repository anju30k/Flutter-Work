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
          padding: const EdgeInsets.all(15),
          height: 100,
          width: 300,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 219, 144, 204),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 138, 10, 112),
            ),
          ),
          child: const Text(
            "Your Name",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
