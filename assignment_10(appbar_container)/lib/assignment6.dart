import 'package:flutter/material.dart';

class Assignment6 extends StatelessWidget {
  const Assignment6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: const Text(
          "Core2Web",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.red,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.green,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.yellow,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.black,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.orange,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.purple,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.pink,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.blue,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.amber,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.grey,
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 10,
              ),
            ]),
      )),
    );
  }
}
