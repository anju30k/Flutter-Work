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
        centerTitle: true,
        title: const Text("Daily Flash"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: const [
                    BoxShadow(color: Colors.black, offset: Offset(0, 8))
                  ]),
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                  boxShadow: const [
                    BoxShadow(color: Colors.red, offset: Offset(0, 8))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
