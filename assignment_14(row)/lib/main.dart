import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Row"),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ],
            ),
          )),
    );
  }
}
