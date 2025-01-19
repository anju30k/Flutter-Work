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
        leading: const Icon(Icons.add_a_photo_outlined),
        centerTitle: true,
        title: const Text("Demo_App"),
        actions: const [Icon(Icons.search_outlined)],
      ),
    );
  }
}
