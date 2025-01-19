import 'package:flutter/material.dart';
import 'package:assignment36_inheritedwidget_eg/main.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key});

  @override
  createState() => _SecondPage();
}

class _SecondPage extends State {
  @override
  Widget build(BuildContext context) {
    final bgColor = BGcolor.of(context);
    return Scaffold(
      backgroundColor: bgColor.colour,
      appBar: AppBar(
        title: const Text("Real-time Example"),
      ),
      body: Center(
        child: Container(
          height: 50,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.amber,
          ),
          child: GestureDetector(
            onTap: () {
              final currentColor = bgColor.colour;
              final newColor =
                  currentColor == Colors.black ? Colors.white : Colors.black;
              BGcolor.of(context).setColorValue(newColor);
              setState(() {});
            },
            child: const Center(
              child: Text("Change BackgroundColor",
                  style: TextStyle(color: Colors.red)),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FirstPage()));
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
