import 'package:flutter/material.dart';

class Que3 extends StatefulWidget {
  @override
  State createState() => _Que3();
}

class _Que3 extends State {
  Color bordercolor = Colors.red;

  void changecolor() {
    setState(() {
      bordercolor = (bordercolor == Colors.red) ? Colors.green : Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Demo_App"),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(border: Border.all(color: bordercolor)),
          child: GestureDetector(
              onTap: changecolor,
              child: const Center(
                child: Text(
                  'Tap to Change Border Color',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
