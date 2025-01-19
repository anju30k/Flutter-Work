import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Containers",
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.red,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.green,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.purple,
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
