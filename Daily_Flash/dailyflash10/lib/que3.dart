import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  @override
  State createState() => _Que3();
}

class _Que3 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: const Text(
            "Daily Flash",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.5, 0.3],
                    colors: [Colors.green, Colors.orange])),
          ),
        ));
  }
}
