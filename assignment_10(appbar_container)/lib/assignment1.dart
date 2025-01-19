import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "WhatsApp",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            fontStyle: FontStyle.normal,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 20),
          Icon(
            Icons.search_off_outlined,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
