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
          title: const Text("Daily Flash"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
              ),
              padding: const EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                      ),
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple,
                      ),
                    ),
                  ])),
        )));
  }
}
