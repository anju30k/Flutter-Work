import 'package:flutter/material.dart';

class Assignment5 extends StatelessWidget {
  const Assignment5({super.key});

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
        child: (SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/Images/bird.jpg",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/Images/god.jpg",
                  width: 150,
                  height: 150,
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/Images/bird.jpg",
                  width: 150,
                  height: 150,
                ),
              ],
            ))),
      ),
    );
  }
}
