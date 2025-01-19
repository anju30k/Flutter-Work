import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _Styling();
}

class _Styling extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          "Container Styling",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            /*Container(
              height: 200,
              width: 200,
              color: Colors.red,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.yellow,
                width: 5,
              )),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.yellow,
                    width: 5,
                  )),
            ),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  )),
            ),*/
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.purple,
                        offset: Offset(30, 30),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.red,
                        offset: Offset(20, 20),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.green,
                        offset: Offset(10, 10),
                        blurRadius: 8),
                  ]),
            ), /*
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                  border: Border.all(
                    color: Colors.blue,
                    width: 5,
                  ),
                  gradient: const LinearGradient(
                    stops: [0.3, 0.5],
                    colors: [Colors.red, Colors.green],
                  )),
            ),*/
          ],
        ),
      ),
    );
  }
}
