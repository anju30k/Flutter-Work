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
                    begin: Alignment(0, 0.01),
                    end: Alignment.bottomCenter,
                    //stops: [0.5, 0.3],
                    colors: [Colors.red, Colors.blue])),
          ),
        ));
  }
}
