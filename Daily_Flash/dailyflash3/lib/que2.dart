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
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 200,
          width: 200,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://cdn.pixabay.com/photo/2016/07/11/17/45/abstract-1510190_640.png")),
          ),
          child: const Center(
            child: Text(
              "Hello World",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
