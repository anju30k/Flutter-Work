import 'package:flutter/material.dart';

class Assignment3 extends StatelessWidget {
  const Assignment3({super.key});

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
                  color: Colors.purple,
                  width: 150,
                  height: 150,
                )
              ],
            )));
  }
}
