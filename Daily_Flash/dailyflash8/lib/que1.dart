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
          backgroundColor: Colors.amber,
          title: const Text(
            "Daily Flash",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.pink,
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.all(20),
                height: 150,
                width: 330,
                color: Colors.green,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
