import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State {
  Color buttoncolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      floatingActionButton: GestureDetector(
        onLongPress: () {
          setState(() {
            buttoncolor = Colors.purple;
          });
        },
        child: Container(
          height: 100,
          width: 100,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: buttoncolor,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
