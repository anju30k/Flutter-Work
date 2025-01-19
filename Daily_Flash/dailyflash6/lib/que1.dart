import 'package:flutter/material.dart';

class Que1 extends StatefulWidget {
  @override
  State createState() => _Que1();
}

class _Que1 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Daily Flash",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "Pizza-3007395.jpg",
            height: 500,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Pizza",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "A large circle of flat bread baked with cheese, tomatoes, and vegetables spread on top.",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
