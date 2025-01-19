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
                boxShadow: [
                  BoxShadow(
                      color: Colors.red,
                      spreadRadius: 2,
                      offset: Offset(10, 10))
                ],
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    stops: [0.1, 0.5],
                    colors: [Colors.blue, Colors.purple])),
          ),
        ));
  }
}
