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
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: TextField(
            decoration: InputDecoration(
              enabled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.red),
              ),
              suffixIcon: const Icon(Icons.lock),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.green),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
