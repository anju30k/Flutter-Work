import 'package:flutter/material.dart';

class Que2 extends StatefulWidget {
  @override
  State createState() => _Que2();
}

class _Que2 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.pink,
            leading: const Icon(Icons.add_a_photo_outlined),
            centerTitle: true,
            title: const Text("Demo_App"),
            actions: <Widget>[
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.comment_outlined)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.share_outlined)),
        ]));
  }
}
