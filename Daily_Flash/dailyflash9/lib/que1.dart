import 'package:flutter/material.dart';

class Que1 extends StatefulWidget {
  @override
  State createState() => _Que1();
}

class _Que1 extends State {
  List<Color> colour = [
    Colors.red,
    Colors.black,
    Colors.green,
    Colors.pink,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Daily Flash"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: colour.length,
          itemBuilder: (context, index) {
            return Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colour[index],
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            );
          }),
    );
  }
}
