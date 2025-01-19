import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  @override
  State createState() => _Que3();
}

class _Que3 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      floatingActionButton: Container(
        height: 100,
        width: 100,
        child: FloatingActionButton(
          onPressed: () {},
          child: const Row(
            children: [
              Icon(Icons.add),
              SizedBox(
                width: 10,
              ),
              Text('Anjali'),
            ],
          ),
        ),
      ),
    );
  }
}
