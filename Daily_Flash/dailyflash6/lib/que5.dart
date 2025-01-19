import 'package:flutter/material.dart';

class Que5 extends StatefulWidget {
  @override
  State createState() => _Que5();
}

class _Que5 extends State {
  Color colours = Colors.white;

  int flag1 = 0;
  int flag2 = 0;
  int flag3 = 0;
  void change1() {
    flag1 = 1;
    setState(() {});
  }

  void change2() {
    flag2 = 1;
    setState(() {});
  }

  void change3() {
    flag3 = 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Daily Flash"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: (flag1 == 0) ? Colors.white : Colors.red,
                border: Border.all(color: Colors.black),
              ),
              child: GestureDetector(
                onTap: () => change1(),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: (flag2 == 0) ? Colors.white : Colors.green,
                border: Border.all(color: Colors.black),
              ),
              child: GestureDetector(
                onTap: () => change2(),
              ),
            ),
            Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: (flag3 == 0) ? Colors.white : Colors.blue,
                border: Border.all(color: Colors.black),
              ),
              child: GestureDetector(
                onTap: () => change3(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
