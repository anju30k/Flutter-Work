import 'package:flutter/material.dart';

class Assignment10 extends StatelessWidget {
  const Assignment10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text(
          "Hello Core2Web",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    color: Colors.yellow,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )))
          ],
        ),
      ),
    );
  }
}
